<%@ page import="java.util.List" %>
<%@ page import="com.tjpu.employ.beans.Enterprise" %><%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/7
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
<head>
        <title>码农招聘平台</title>
<%--        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css">--%>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/normalize.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/myyzlq.css">
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
                        margin-left: 20%;
                        width: 60%;
                        border: 0px;
                        /*background-color:#f9f0da;*/
                        background-color: white;
                }
                .o-table{
                        width: 60%;
                        margin-left: 20%;
                        /*background-color: #f9f0da;*/
                        background-color: white;
                }
                .o-title{
                        width: 60%;
                        height: 100px;
                        margin-left: 20%;
                        padding-top: 20px;
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
<div class="o-title">企业信息</div>
<!--企业信息表-->
<table class="o-info">
        <c:forEach items="${enterprise}" var="enter">
                <tr>
                        <td class="o-tr1">企业账户</td>
                        <td class="o-tr2"><a class="btn-11" style="text-align: center">${enter.enterEmail}</a></td>
                        <td style="padding-left:5%;text-align: center;font-size: 24px;">企业位置</td>
                </tr>
                <tr>
                        <td class="o-tr1">企业介绍</td>
                        <td class="o-tr1"><a class="btn-11" style="text-align: center">${enter.enterInfo}</a></td>
                        <td rowspan="5"><div style="margin-left:16%;width:400px;height:320px;border:#ccc solid 1px;" id="dituContent"></div></td>
                </tr>
                <tr>
                        <td class="o-tr1">法人代表</td>
                        <td class="o-tr1"><a class="btn-11" style="text-align: center">${enter.enterUsername}</a></td>
                </tr>
                <tr>
                        <td class="o-tr1">企业名称</td>
                        <td class="o-tr1"><a class="btn-11" style="text-align: center">${enter.enterName}</a></td>
                </tr>
                <tr>
                        <td class="o-tr1">联系电话</td>
                        <td class="o-tr1"><a class="btn-11" style="text-align: center">${enter.enterPhone}</a></td>
                </tr>
                <tr>
                        <td class="o-tr1">公司类型</td>
                        <td class="o-tr1"><a class="btn-11" style="text-align: center">${enter.enterType}</a></td>
                </tr>
        </c:forEach>
</table>

<%--<div style="margin-top:1%;margin-left: 55%; width:400px;height:40px;text-align: center;font-family: '等线 Light';font-size: 24px;">企业位置:${enterprise[0].enterLocation}</div>--%>
<!--在招岗位表-->
<div class="o-title"> 在招岗位 </div>
<div class="o-table">
        <table class="table table-hover" style="font-family: '等线 Light'">
                <c:forEach var="now_it" items="${enterprise[0].hireInfos}">
                        <tr >
                                <td style="vertical-align:middle;">${now_it.hireOccupation}</td>
                                <td style="vertical-align:middle;">${now_it.hireYears}</td>
                                <td style="vertical-align:middle;">${now_it.hireLanguage}</td>
                                <td style="vertical-align:middle;">${now_it.hireSalary}</td>
                                <td style="vertical-align:middle;">${now_it.hireEducation}</td>
                                <td style="vertical-align:middle;"><a href="<%=request.getContextPath()%>/seeParticularInfo?hireId=${now_it.hireId}" class="btn-1" style="text-decoration: none">查看详情</a></td>
                        </tr>
                </c:forEach>
        </table>
</div>
</body>

<script src="${pageContext.request.contextPath}/static/UI/button/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/UI/button/js/index.js"></script>
<script>
    //创建和初始化地图函数：
    function initMap() {
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }

    //创建地图函数：
    function createMap() {
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.331398, 39.897445);
        map.centerAndZoom(point, 11);

        var myGeo = new BMap.Geocoder();
        // 将地址解析结果显示在地图上,并调整地图视野
        myGeo.getPoint("${enterprise[0].enterLocation}", function (point) {
            if (point) {
                map.centerAndZoom(point, 16);
                map.addOverlay(new BMap.Marker(point));
            } else {
                alert("您选择地址没有解析到结果!");
            }
        }, "${enterprise[0].enterLocation}");

        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }

    //地图控件添加函数：
    function addMapControl() {
        //向地图中添加缩放控件
        var ctrl_nav = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_LEFT, type: BMAP_NAVIGATION_CONTROL_LARGE});
        map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
        var ctrl_ove = new BMap.OverviewMapControl({anchor: BMAP_ANCHOR_BOTTOM_RIGHT, isOpen: 1});
        map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
        var ctrl_sca = new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT});
        map.addControl(ctrl_sca);
    }


    initMap();//创建和初始化地图
</script>

</html>
