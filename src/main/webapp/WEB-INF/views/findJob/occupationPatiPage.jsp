<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/6
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
<head>
    <title>码农招聘平台</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/normalize.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/myyzlq.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/buttons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/base.css">
    <script src="${pageContext.request.contextPath}/static/BUI/js/jquery-3.3.1.js"></script>
    <script src="${pageContext.request.contextPath}/static/BUI/js/proper.js"></script>
    <script src="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/js/bootstrap.js"></script>

    <!--引用百度地图API-->
    <style type="text/css">
        html,body{margin:0;padding:0;}
        .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
        .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
        .adetail{text-decoration: none}
        .o-info{
            font-family: '等线 Light';
            font-size: 18px;
            z-index: -2;
            /*margin-left: 20%;*/
            width: 100%;
            border: 0px;
            /*background-color:#f9f0da;*/
            background-color: white;
        }
        .o-table{
            font-family: '等线 Light';
            font-size: 18px;
        }
        .o-title{
            width: 60%;
            height: 75px;
            margin-left: 20%;
            padding-top: 10px;
            text-align: center;
            font-family: "李旭科书法 v1.4";
            font-size: 36px;
            color: black;
            /*background-color: #f9f0da;*/
            background-color: white;
        }
        .o-tr1{
            padding-left: 2%;padding-top: 7px;width: 15%;
        }
        .o-tr2{
            padding-left: 2%;padding-top: 7px;width: 30%;
        }
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>
<!--招聘信息具体查看-->
<div class="o-title ">招聘信息详情</div>
<div class="shadow p-3 mb-5 bg-white rounded" style="text-align: center;width: 60%;margin-left: 20%;">
    <div style="text-align: center;" >
        <div class="o-table"><h2>${hireInfo.hireOccupation}</h2></div>
        <div class="o-table"><br>薪资${hireInfo.hireSalary}</div>
        <div class="o-table"><br>${hireInfo.hireLanguage}语言</div>
        <div class="o-table"><br>${hireInfo.hireYears}年以上工作经验</div>
        <div class="o-table"><br>${hireInfo.hireEducation}学历要求</div>
        <div class="o-table"><br>立即电话沟通:${hireInfo.enterprise.enterPhone}</div>
        <div class="o-table"><br>发送电子邮件:${hireInfo.enterprise.enterEmail}</div>
        <br>
    </div>

        <%--                        这个可以大一点,这是两种联系方式--%>
<%--        <h1><a href="${pageContext.request.contextPath}/submitMyInfo?hireId=${hireInfo.hireId}&seekerEmail=<shiro:principal/>">投递我的信息及简历</a></h1>--%>
<%--        <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">发送电子邮件</button>--%>
<%--            <div class="box bg-1">--%>
<%--                <button class="button button--isi button--text-thick button--text-upper button--size-s"><i class="button__icon icon icon-forward"></i><span>状态:招聘中</span></button>--%>
<%--                <button class="button button--isi button--text-thick button--text-upper button--size-s"><i class="button__icon icon icon-box"></i>--%>

<%--                        <a href="${pageContext.request.contextPath}/submitMyInfo?hireId=${hireInfo.hireId}&seekerEmail=<shiro:principal/>" style="color: white;text-decoration: none;height: 20px;"><span>投递我的信息及简历</span></a>--%>
<%--                </button>--%>

<%--                <button class="button button--isi button--text-thick button--text-upper button--size-s" data-toggle="modal" data-target="#myModal">--%>
<%--                    <i class="button__icon icon icon-reply"></i><span>发送电子邮件</span>--%>
<%--                </button>--%>
<%--            </div>--%>
            <div class="box bg-1">
                <button class="button button--isi button--text-thick button--text-upper button--size-s"><i class="button__icon icon icon-box"></i><span>状态:招聘中</span></button>
                <button class="button button--isi button--text-thick button--text-upper button--size-s"><i class="button__icon icon icon-forward" data-toggle="modal" data-target="#alertModal"></i>

                              <a href="${pageContext.request.contextPath}/submitMyInfo?hireId=${hireInfo.hireId}&seekerEmail=<shiro:principal/>"
                                style="color: white;text-decoration: none" id="submitInfo"> <span>投递我的信息及简历</span></a>

                </button>

                <button class="button button--isi button--text-thick button--text-upper button--size-s" data-toggle="modal" data-target="#myModal"><i class="button__icon icon icon-reply" ></i><span>发送电子邮件</span></button>
            </div>
        <!-- 模态框（Modal） -->
        <%--        开启模态框按钮--%>
        <div class="modal  fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">发送电子邮件</h4>
                    </div>
                    <%--                                        模态框内容,可以往这里加点样式--%>
                    <div class="modal-body">
                        <form action="${pageContext.request.contextPath}/sendEmail">
                            邮箱: <input type="email" name="email" value="<shiro:principal />" />
                            密码: <input type="password" name="pwd" /> <!--密码:tmsyvdgmbumjbffa-->
                            标题:<input type="text" name="subject" />
                            收件人: <input type="email" name="receiver" value="${hireInfo.enterprise.enterEmail}">

                            发送内容：<br>
                            <textarea  name="content" rows="5" cols="35" style="font-size: 30px"></textarea>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                <button type="submit" class="btn btn-primary">发送</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<div class="o-title">公司信息</div>
<table class="o-info">
    <tr>
        <td class="o-tr1">公司名称</td>
        <td class="o-tr2"><a class="btn-11" style="text-align: center">${hireInfo.enterprise.enterName}</a></td>
        <td style="padding-left:5%;text-align: center;font-size: 24px;">公司位置</td>
    </tr>
    <tr>
        <td class="o-tr1">企业介绍</td>
        <td class="o-tr1"><a class="btn-11" style="text-align: center">${hireInfo.enterprise.enterInfo}</a></td>
        <td rowspan="5"><div style="margin-left:16%;width:400px;height:320px;border:#ccc solid 1px;" id="dituContent"></div></td>
    </tr>
    <tr>
        <td class="o-tr1">法人代表</td>
        <td class="o-tr1"><a class="btn-11" style="text-align: center">${hireInfo.enterprise.enterUsername}</a></td>
    </tr>
    <tr>
        <td class="o-tr1">企业名称</td>
        <td class="o-tr1"><a class="btn-11" style="text-align: center">${hireInfo.enterprise.enterName}</a></td>
    </tr>
    <tr>
        <td class="o-tr1">联系电话</td>
        <td class="o-tr1"><a class="btn-11" style="text-align: center">${hireInfo.enterprise.enterPhone}</a></td>
    </tr>
    <tr>
        <td class="o-tr1">公司类型</td>
        <td class="o-tr1"><a class="btn-11" style="text-align: center">${hireInfo.enterprise.enterType}</a></td>
    </tr>
</table>
</div>

<!--公司信息-->

<div style="height: 100px;"></div>
</body>

<script>
        $("#submitInfo").click(function () {
                alert("投递成功!请等待通知~");
        });
</script>


<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }

    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.331398,39.897445);
        map.centerAndZoom(point,11);

        var myGeo = new BMap.Geocoder();
        // 将地址解析结果显示在地图上,并调整地图视野
        myGeo.getPoint("${hireInfo.enterprise.enterLocation}", function(point){
            if (point) {
                map.centerAndZoom(point, 16);
                map.addOverlay(new BMap.Marker(point));
            }else{
                alert("您选择地址没有解析到结果!");
            }
        }, "${hireInfo.enterprise.enterLocation}");

        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
        map.addControl(ctrl_sca);
    }


    initMap();//创建和初始化地图
</script>
</html>
