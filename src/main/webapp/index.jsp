<%@ page import="com.tjpu.employ.beans.HireInfo" %><%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/2
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
<head>
        <title>码农招聘平台</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/style-search.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/style-leftsight.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/waterfall-main.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/waterfall-sortable.min.css">
        <style>
                a {text-decoration:none}
                .photo1-1{
                        width:480px;
                        height:186.6px;
                        display: block
                }
                .photo1-3{
                        width:240px;
                        height:93.3px;
                        display: block;
                }
                .photo3-1{
                        width:480px;
                        height:93.3px;
                        display: block;
                }
                .carousel{
                        width: 70%;
                        height: 70%;
                        margin: 50px auto auto auto;
                }
                .footer{
                        text-align:center;
                }
        </style>
</head>
<body style="background-color:white;>

        <shiro:authenticated>
<%--                公共页面--%>
                <jsp:include page="WEB-INF/views/headerPage/publicPage.jsp"></jsp:include>
        </shiro:authenticated>

        <!--求职者页面-->
        <shiro:hasRole name="seeker">
                <%--轮播图--%>
        <div id="carouselExampleIndicators" class="carousel slide " data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="${pageContext.request.contextPath}/static/BUI/images/1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/static/BUI/images/2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="${pageContext.request.contextPath}/static/BUI/images/suanfa.jpg" class="d-block w-100" alt="...">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
        </div>
                <%--<div class="carousel slide" data-ride="carousel"  data-interval="3000">
                        <div class="carousel-inner views">
                                <div class="carousel-item active">
                                        <img src="${pageContext.request.contextPath}/static/BUI/images/1.jpg" class="d-block w-100">
                                </div>
                                <div class="carousel-item views">
                                        <img src="${pageContext.request.contextPath}/static/BUI/images/3.png" class="d-block w-100">
                                </div>
                                <div class="carousel-item views">
                                        <img src="${pageContext.request.contextPath}/static/BUI/images/2.jpg" class="d-block w-100">
                                </div>
                        </div>
                </div>--%>
                <!--搜索框-->
                <div class="search d1" style="background-color:white">
                        <form id="search_form" action="${pageContext.request.contextPath}/elasticsearch" >

                                <input  type="text" name="searchParam" id="exampleInputAmount" placeholder="在这里进行搜索~">
                                <button type="submit" ></button>
                        </form>
                </div>
                <!--右侧图片展示栏-->
                <div style=" position:absolute; left:37%; top:104.4%; z-index:1;width:420px;height:280px;">
                        <table border="0" border-collapse="0" bgcolor="#F9F0DA">
                                <tr style="width:720px;" >
                                        <td style="width:480px;height:186.6px;" colspan="2" rowspan="2" >
                                                <img src="${pageContext.request.contextPath}/static/UI/images/1-1.jpg" class="photo1-1">
                                        </td>

                                        <td style="width:240px;height:93.3px;">
                                                <img src="${pageContext.request.contextPath}/static/UI/images/1-3.jpg" class="photo1-3">
                                        </td>
                                </tr>
                                <tr>
                                        <td style="width:240px;height:93.3px;">
                                                <img src="${pageContext.request.contextPath}/static/UI/images/2-3.jpg" class="photo1-3">
                                        </td>

                                </tr>
                                <tr>
                                        <td colspan="2" style="width:480px;height:93.3px;">
                                                <img src="${pageContext.request.contextPath}/static/UI/images/3-1.jpg" class="photo3-1">
                                        </td>
                                        <td style="width:240px;height:93.3px;">
                                                <img src="${pageContext.request.contextPath}/static/UI/images/3-3.jpg" class="photo1-3">
                                        </td>
                                </tr>
                        </table>
                </div>
                <!--左侧菜单栏-->
                <div class="main" id="main">
                        <div class="menu-box">
                        </div>
                        <!--内容-->
                        <div class="sub-menu hide" id="sub-menu">
                                <div class="inner-box">
                                        <div class="sub-inner-box" style="font-family:等线 Light">
                                                <div class="title">后台开发</div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">工程师</span>
                                                        <a href="">GIS工程师</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">全栈工程师</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">架构工程师</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">后端工程师</a>
                                                </div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">语言</span>
                                                        <a href="">Java</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">C++</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">PHP</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">C</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">C#</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Python</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Hadoop</a>
                                                </div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">语言</span>
                                                        <a href="">Delphi</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">VB</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Perl</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Ruby</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Node.js</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Golang</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Erlang</a>
                                                </div>
                                        </div>
                                </div>
                                <div class="inner-box">
                                        <div class="sub-inner-box" style="font-family:等线 Light">
                                                <div class="title">职位一览</div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">移动开发</span>
                                                        <a href="">UE4</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">HTML5</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Android</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">iOS</a>
                                                </div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">移动开发</span>
                                                        <a href="">WP</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">移动web前端</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">JavaScript</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">Flash开发</a>
                                                </div>
                                        </div>
                                </div>
                                <div class="inner-box">
                                        <div class="sub-inner-box" style="font-family:等线 Light">
                                                <div class="title">职位一览</div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">测试校验</span>
                                                        <a href="">渗透测试</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">测试工程师</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">自动化测试</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">功能测试</a>
                                                </div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">测试校验</span>
                                                        <a href="">性能测试</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">测试开发</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">移动端测试</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">硬件测试</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">软件测试</a>
                                                </div>
                                        </div>
                                </div>
                                <div class="inner-box">
                                        <div class="sub-inner-box" style="font-family:等线 Light">
                                                <div class="title">职位一览</div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">运营维护</span>
                                                        <a href="">运维工程师</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">运维开发工程师</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">网络工程师</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">系统工程师</a>
                                                </div>
                                                <div class="sub-row">
                                                        <span class="bold mr10">运营维护</span>
                                                        <a href="">IT技术支持</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">系统管理员</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">网络安全</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">系统安全</a>
                                                        <span class="ml10 mr10">/</span>
                                                        <a href="">DBA</a>
                                                </div>
                                        </div>
                                </div>
                        </div>
                        <!-- 左侧菜单纵向菜单栏 -->
                        <div class="menu-content" id="menu-content" style="font-family: 等线 Light">
                                <div class="menu-item">
                                        <a href="">
                                                <span class="span-item">后台开发</span>
                                                <i class="icon">&#xe665;</i>
                                        </a>
                                </div>
                                <div class="menu-item">
                                        <a href="">
                                                <span class="span-item">移动开发</span>
                                                <i class="icon">&#xe665;</i>
                                        </a>
                                </div>
                                <div class="menu-item">
                                        <a href="" style="text-decoration: none">
                                                <span class="span-item">测试校验</span>
                                                <i class="icon">&#xe665;</i>
                                        </a>
                                </div>
                                <div class="menu-item">
                                        <a href="">
                                                <span class="span-item">运营维护</span>
                                                <i class="icon">&#xe665;</i>
                                        </a>
                                </div>
                        </div>
                        <div class="banner" id="banner">

                        </div>
                        <a href="javascript:void(0)" class="button prev" id="prev"></a>
                        <a href="javascript:void(0)" class="button next" id="next"></a>
                        <div class="dots" id="dots">

                        </div>
                </div>

<%--                别动别人看不见--%>
                <form id="formToOccupation" action="<%=request.getContextPath()%>/toOccupationPage"><input type="hidden" name="hireOccupation" value="" /></form>

                <!--热门职位显示-->
                <main class="mt-5 mb-5 sortable bodyhtml" style="background-color:white;z-index: 1">

                        <div class="water-container" style="z-index: 1">
                                <div class="wrapper">
                                        <ul class="sortable__nav nav waterul">
                                                <li>
                                                        <a data-sjslink="flatty" class="nav__link water-a">
                                                                大型企业
                                                        </a>
                                                </li>
                                                <li>
                                                        <a data-sjslink="all" class="nav__link water-a">
                                                                所有企业
                                                        </a>
                                                </li>
                                                <li>
                                                        <a data-sjslink="funny" class="nav__link water-a">
                                                                中小企业
                                                        </a>
                                                </li>
                                        </ul>
                                        <br>
                                        <div id="sortable" class="sjs-default mt-5 " style="z-index: 999">
                                                <div data-sjsel="flatty">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/UI/images/enter-1.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=华为">华为公司</a></h2>
                                                                        <p class="card__text">
                                                                                华为- 构建万物互联的智能世界
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div data-sjsel="flatty">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_4.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=腾讯">腾讯公司</a></h2>
                                                                        <p class="card__text">
                                                                                腾讯是一家以互联网为基础的平台公司，通过技术丰富互联网用户的生活，助力企业数字化升级
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div data-sjsel="funny">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_16.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=瓜子二手车">瓜子二手车</a></h2>
                                                                        <p class="card__text">
                                                                                全国二手车,急卖二手车,直面个人买家 好车卖出好价,瓜子二手车均经过259项检测,标准无事故,优质个人二手车
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div data-sjsel="flatty">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_8.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=字节跳动">字节跳动</a></h2>
                                                                        <p class="card__text">
                                                                                最早将人工智能应用于移动互联网场景的科技企业之一，是中国北京的一家信息科技公司
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div data-sjsel="flatty">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_6.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=阿里">阿里巴巴</a></h2>
                                                                        <p class="card__text">
                                                                                阿里巴巴集团经营多项业务，另外也从关联公司的业务和服务中取得经营商业生态系统上的支援。业务和关联公司的业务包括：淘宝网、天猫等
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div data-sjsel="funny">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_7.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=网易">网易公司</a></h2>
                                                                        <p class="card__text">
                                                                                本着对中国互联网发展强烈的使命感，缔造美好生活的愿景，网易利用最先进的互联网技术，加强人与人之间信息的交流和共享。
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div data-sjsel="flatty">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_5.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=百度">百度公司</a></h2>
                                                                        <p class="card__text">
                                                                                百度是全球最大的中文搜索引擎，中国最大的以信息和知识为核心的互联网综合服务公司，全球领先的人工智能平台型公司。
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                                <div data-sjsel="flatty">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_18.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=万达集团">万达集团</a></h2>
                                                                        <p class="card__text">
                                                                                万达是世界领先的不动产企业、世界领先的影视企业、世界领先的体育企业、世界领先的儿童产业企业。
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>

                                                <div data-sjsel="funny">
                                                        <div class="card">
                                                                <img class="card__picture waterimg" src="${pageContext.request.contextPath}/static/imgs/img_20.jpg" alt="">
                                                                <div class="card-infos">
                                                                        <h2 class="card__title"><a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=黻圆集团">黻圆集团</a></h2>
                                                                        <p class="card__text ">
                                                                                世界五百强顶尖级企业
                                                                        </p>
                                                                </div>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </main>
                <%--底部--%>
                <div class="footer border-top">
                        <div class="row mt-5">
                                <a class="offset-5 mr-2">关于我们</a>   <span class="mr-2">|</span>
                                <a class="mr-2">联系我们</a> <span class="mr-2">|</span>
                                <a >帮助中心</a>
                        </div>
                        <div>
                                Copyright ©2011-2019  版权所有 保留一切权利 | 隐私政策 | 法律声明 | 粤B2-20080267 | 粤ICP备05100288号 工业和信息化部备案管理系统网站
                        </div>
                </div>
        </shiro:hasRole>

        <!--管理员页面-->
        <shiro:hasRole name="admin">
        <div style="background-color: white;height: 100%;font-family: 'KaiTi';font-weight: bold;">
                <c:if test="${sessionScope.token != 'token'}">
                        <jsp:include page="WEB-INF/views/face/faceDetect.jsp"></jsp:include>

                </c:if>
                <c:if test="${sessionScope.token == 'token'}">
                <h1 style="font-family: 'kaiTi';font-weight: bolder;text-align: center;padding:20px 0 ;" >管理员用户管理界面</h1>
                <table id="jobSeeker" class="table table-hover" style="position: absolute;width:80%;left: 10%;">
                        <tr>
                                <td colspan="5" style="width: 50%">
                                        <button style="font-weight: bold" type="button" class="btn btn-primary btn-lg btn-block">求职者管理</button>
                                </td>
                                <td colspan="5" style="width: 50%">
                                        <button style="font-weight: bold" type="button" class="btn btn-primary btn-lg btn-block">企业用户管理</button>
                                </td>
                        </tr>
                        <tr style="font-weight: bold">
                                <td>求职者Id</td>
                                <td>求职者姓名</td>
                                <td>求职者邮箱</td>
                                <td>求职者密码</td>
                                <td>求职者年龄</td>
                                <td>求职者性别</td>
                                <td>求职者掌握语言</td>
                                <td>教育经历</td>
                                <td>工作经历</td>
                                <td>操作</td>
                        </tr>

                        <c:forEach items="${allUsers.get(1)}" var="now_it">
                                <tr style="font-size: 16px;font-family: 'kaiTi'">
                                        <td>${now_it.seekerId}</td>
                                        <td>${now_it.seekerName}</td>
                                        <td>${now_it.seekerEmail}</td>
                                        <td>${now_it.seekerPassword}</td>
                                        <td>${now_it.seekerAge}</td>
                                        <td>${now_it.seekerGender == 1? '男' : '女'}</td>
                                        <td>${now_it.seekerLanguage}</td>
                                        <td>${now_it.seekerEduc}</td>
                                        <td>${now_it.seekerYears}年</td>
                                        <td>
                                                <button type="button" class="btn btn-success"  data-toggle="modal"  data-target="#myModalSeeker${now_it.seekerId}" >修改</button>
                                                <c:forEach items="${allUsers.get(1)}" var="nowIt">
                                                <div class="modal  fade" id="myModalSeeker${nowIt.seekerId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                        <div class="modal-header">
                                                                                <h4 class="modal-title" id="myModalLabel">修改${nowIt.seekerName}信息</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                                <form action="${pageContext.request.contextPath}/adminUpdateSeeker">
                                                                                        <input class="form-control" name="seekerId" type="hidden" value="${nowIt.seekerId}">
                                                                                        <label>求职者姓名:</label><input name="seekerName" class="form-control" type="text" value="${nowIt.seekerName}">
                                                                                        <label>求职者邮箱:</label><input name="seekerEmail" class="form-control" type="text" value="${nowIt.seekerEmail}">
                                                                                        <label>求职者密码:</label><input name="seekerPassword" class="form-control" type="text" value="${nowIt.seekerPassword}">
                                                                                        <label>求职者年龄:</label><input name="seekerAge" class="form-control" type="text" value="${nowIt.seekerAge}">
                                                                                        <label>求职者性别(1为男,0为女):</label><input name="seekerGender" class="form-control" type="text" value="${nowIt.seekerGender}">
                                                                                        <label>求职者掌握语言:</label> <input name="seekerLanguage" class="form-control" type="text" value="${nowIt.seekerLanguage}">
                                                                                        <label>教育经历:</label><input name="seekerEduc" class="form-control" type="text" value="${nowIt.seekerEduc}">
                                                                                        <label>工作经验(年):</label> <input name="seekerYears" class="form-control" type="text" value="${nowIt.seekerYears}">
                                                                                        <button type="submit" class="btn btn-success" style="float: right;margin-top: 10px">确认并提交</button>
                                                                                </form>
                                                                        </div>

                                                                </div>
                                                        </div>
                                                </div>
                                                </c:forEach>
                                                <button type="button" class="btn btn-danger" seekerId="${now_it.seekerId}" >封禁</button></td>
                                </tr>
                        </c:forEach>
                </table>
                <table id="enterprise" class="table table-hover" style="position: absolute;display: none;width:82%;left: 10%;">
                        <tr >
                                <td colspan="5" style="width: 50%">
                                        <button style="font-weight: bold" type="button" class="btn btn-primary btn-lg btn-block">求职者管理</button>
                                </td>
                                <td colspan="5" style="width: 50%">
                                        <button style="font-weight: bold" type="button" class="btn btn-primary btn-lg btn-block">企业用户管理</button>
                                </td>
                        </tr>
                        <tr  style="font-size: 15px;font-family: 'kaiTi';font-weight: bold;">
                                <td>企业Id</td>
                                <td>企业名字</td>
                                <td>企业邮箱</td>
                                <td>企业法人姓名</td>
                                <td>企业法人密码</td>
                                <td>企业类型</td>
                                <td>企业电话</td>
                                <td>企业位置</td>
                                <td>企业信息</td>
                                <td>操作组</td>
                        </tr>
                        <c:forEach items="${allUsers.get(0)}" var="now_it">
                                <tr>
                                        <td>${now_it.enterId}</td>
                                        <td>${now_it.enterName}</td>
                                        <td>${now_it.enterEmail}</td>
                                        <td>${now_it.enterUsername}</td>
                                        <td>${now_it.enterPassword}</td>
                                        <td>${now_it.enterType}</td>
                                        <td>${now_it.enterPhone}</td>
                                        <td>${now_it.enterLocation}</td>
                                        <td>${now_it.enterInfo}</td>
                                        <td>
                                                <button  type="button" class="btn btn-info" data-toggle="modal"  data-target="#myModalSelect${now_it.enterId}">招聘信息</button>
                                                <c:forEach items="${allUsers.get(0)}" var="nowIt">
                                                <div class="modal  fade" id="myModalSelect${nowIt.enterId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                        <div class="modal-header">
                                                                                <h4 class="modal-title" id="myModalLabel">查询并修改${nowIt.enterName}的所有招聘信息</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                        </div>
                                                                        <div class="modal-body">

                                                                                <c:forEach items="${nowIt.hireInfos}" var="tmp">
                                                                                        <form action="${pageContext.request.contextPath}/modifyHireInfos">
                                                                                                <input type="hidden" class="form-control" name="hireId" value="${tmp.hireId}"/>
                                                                                                <label >招聘职业:</label>
                                                                                                <input type="text" class="form-control" name="hireOccupation" value="${tmp.hireOccupation}"/>
                                                                                                <label>工作经验(年):</label>
                                                                                                <input type="text" class="form-control" name="hireYears" value="${tmp.hireYears}"/>
                                                                                                <label>薪资待遇:</label>
                                                                                                <input type="text" class="form-control" name="hireSalary" value="${tmp.hireSalary}"/>
                                                                                                <label>学历要求:</label>
                                                                                                <input type="text" class="form-control" name="hireEducation" value="${tmp.hireEducation}" />
                                                                                                <label>语言要求:</label>
                                                                                                <input type="text" class="form-control" name="hireLanguage" value="${tmp.hireLanguage}"/>
                                                                                                <button type="submit" class="btn btn-info" style="margin: 5px 0 5px 73%">修改此条记录</button>
                                                                                        </form>
                                                                                </c:forEach>

                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                                </c:forEach>

                                                <button type="button" class="btn btn-success"  data-toggle="modal" data-target="#myModalEnter${now_it.enterId}">修改</button>
                                                <c:forEach items="${allUsers.get(0)}" var="nowIt">
                                                <div class="modal  fade" id="myModalEnter${nowIt.enterId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                        <div class="modal-header">
                                                                                <h4 class="modal-title" id="myModalLabel">修改${nowIt.enterName}公司信息</h4>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                                <form action="${pageContext.request.contextPath}/adminUpdateEnter">
                                                                                        <input class="form-control" name="enterId" type="hidden" value="${nowIt.enterId}">
                                                                                        <label>企业名字:</label><input name="enterName" class="form-control" type="text" value="${nowIt.enterName}">
                                                                                        <label>企业邮箱:</label><input name="enterEmail" class="form-control" type="text" value="${nowIt.enterEmail}">
                                                                                        <label>企业法人:</label><input name="enterUsername" class="form-control" type="text" value="${nowIt.enterUsername}">
                                                                                        <label>企业管理密码:</label><input name="enterPassword" class="form-control" type="text" value="${nowIt.enterPassword}">
                                                                                        <label>企业类型:</label><input name="enterType" class="form-control" type="text" value="${nowIt.enterType}">
                                                                                        <label>联系电话:</label> <input name="enterPhone" class="form-control" type="text" value="${nowIt.enterPhone}">
                                                                                        <label>企业地址:</label><input name="enterLocation" class="form-control" type="text" value="${nowIt.enterLocation}">
                                                                                        <label>详细信息:</label><textarea rows="3" name="enterInfo" class="form-control">${nowIt.enterInfo}</textarea>
                                                                                        <button type="submit" class="btn btn-success" style="float: right;margin-top: 10px">确认并提交</button>
                                                                                </form>

                                                                        </div>

                                                                </div>
                                                        </div>
                                                </div>
                                                </c:forEach>
                                                <button type="button" class="btn btn-danger" enterId="${now_it.enterId}" >封禁</button></td>
                                </tr>
                        </c:forEach>
                </table>
                <form id="banForm"   action="<%=request.getContextPath()%>/banUser">
                        <input type="hidden" name="seekerId" value="-1">
                        <input type="hidden" name="enterId" value="-1">
                </form>
                </c:if>
        </div>
        </shiro:hasRole>

        <!--企业招聘者页面-->
        <shiro:hasRole name="enterprise">
                <div style="height: 100%;font-family: 'KaiTi';font-weight: bold;">
                        <c:if test="${sessionScope.token != 'took'}">
                                <h1 style="font-family: 'kaiTi';font-weight: bolder;text-align: center;padding:60px 0 40px 0 ;" >二次验证</h1>
                                <form id="adminForm" action="<%=request.getContextPath()%>/showMyEnter">
                                                <div class="form-group"  style="width: 60%;position:relative;left: 25%">
                                                        <label for="inputEmail3" class="col-sm-2 control-label">Email:</label>
                                                        <div class="col-sm-10">
                                                                <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email" />
                                                        </div>
                                                </div>
                                                <div class="form-group"  style="width: 60%;position:relative;left: 25%">
                                                        <label for="inputPassword3" class="col-sm-2 control-label">Password:</label>
                                                        <div class="col-sm-10">
                                                                <input type="password"  name="password" class="form-control" id="inputPassword3" placeholder="Password" />
                                                        </div>
                                                </div>
                                                <div class="form-group">
                                                        <div class="col-sm-offset-2 col-sm-10" style="width: 50%;position:relative;left: 25%;margin-top: 40px">
                                                                <button type="submit" class="btn btn-primary btn-lg btn-block">验证</button>
                                                        </div>
                                                </div>

                                </form>
                        </c:if>
                        <c:if test="${sessionScope.token == 'took'}">
                               <div id="wrapper" style="width: 70%;margin-left: 15%;padding-top: 2%;font-weight: bold;">
                                   <div style="width:40% ;float: left">
                                       <table class="table table-bordered" style="font-weight: bold;">
                                               <tr ><td colspan="3"><h1 style="font-weight: bold;text-align: center">当前企业信息</h1></td></tr>
                                               <tr>
                                                       <td>企业Id</td>
                                                       <td>${enterprise.enterId}</td>
                                                       <td> <button type="button" class="btn btn-primary" disabled="true">修改</button></td>
                                               </tr>
                                               <tr>
                                                       <td>企业徽标</td>
                                                       <td><img style="width: 80px;height: 60px" src="${pageContext.request.contextPath}/static/imgs/img_${enterprise.enterId}.jpg"/></td>
                                                       <td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#enterUser0">修改</button></td>
                                                        <div class="modal  fade" id="enterUser0" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改enterIcon</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateIcon" method="post" name="post" enctype="multipart/form-data">
                                                                                               <div class="form-group">
                                                                                                       <label for="exampleInputName2">修改企业图标:</label>
                                                                                                       <input type="hidden" name="enterId" value="${enterprise.enterId}">
                                                                                                       <input type="file"  name="icon"  >
                                                                                                       <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                               </div>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                               <tr>
                                                       <td>企业密码</td>
                                                       <td>${enterprise.enterPassword}</td>
                                                       <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser1">修改</button></td>
                                                       <div class="modal  fade" id="enterUser1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改enterPassword</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                               <div class="form-group">
                                                                                                       <label for="exampleInputName2">修改企业密码:</label>
                                                                                                       <input name="enterPassword" type="text" class="form-control" id="exampleInputName2" placeholder="${enterprise.enterPassword}">
                                                                                                       <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                               </div>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                               <tr>
                                                       <td>企业邮箱</td>
                                                       <td>${enterprise.enterEmail}</td>
                                                       <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser2">修改</button></td>
                                                       <div class="modal  fade" id="enterUser2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改enterEmail</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                               <div class="form-group">
                                                                                                       <label for="exampleInputName2">修改企业邮箱:</label>
                                                                                                       <input name="enterEmail" type="text" class="form-control" id="exampleInputName2" placeholder="${enterprise.enterEmail}">
                                                                                                       <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                               </div>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                               <tr>
                                                       <td>企业信息</td>
                                                       <td>${enterprise.enterInfo}</td>
                                                       <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser3">修改</button></td>
                                                       <div class="modal  fade" id="enterUser3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改EnterInfo</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                               <div class="form-group">
                                                                                                       <label >修改企业信息:</label>
                                                                                                       <textarea name="enterInfo"  class="form-control" >${enterprise.enterInfo}</textarea>
                                                                                                       <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                               </div>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                               <tr>
                                                       <td>企业法人姓名</td>
                                                       <td>${enterprise.enterUsername}</td>
                                                       <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser4">修改</button></td>
                                                       <div class="modal  fade" id="enterUser4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改enterUsername</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                               <div class="form-group">
                                                                                                       <label for="exampleInputName2">修改企业法人:</label>
                                                                                                       <input name="enterUsername" type="text" class="form-control" id="exampleInputName2" placeholder="${enterprise.enterUsername}">
                                                                                                       <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                               </div>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                               <tr>
                                                       <td>企业名称</td>
                                                       <td>${enterprise.enterName}</td>
                                               <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser5">修改</button></td>
                                               <div class="modal  fade" id="enterUser5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                       <div class="modal-dialog">
                                                               <div class="modal-content">
                                                                       <div class="modal-header">
                                                                               <h4 class="modal-title" id="myModalLabel">修改enterName</h4>
                                                                               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                       </div>
                                                                       <div class="modal-body">
                                                                               <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                       <div class="form-group">
                                                                                               <label for="exampleInputName2">修改企业名称:</label>
                                                                                               <input name="enterName" type="text" class="form-control" id="exampleInputName2" placeholder="${enterprise.enterName}">
                                                                                               <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                       </div>
                                                                               </form>
                                                                       </div>

                                                               </div>
                                                       </div>
                                               </div>
                                               </tr>
                                               <tr>
                                                       <td>企业联系电话</td>
                                                       <td>${enterprise.enterPhone}</td>
                                                       <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser6">修改</button></td>
                                                       <div class="modal  fade" id="enterUser6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改enterPhone</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                               <label for="exampleInputName2">修改企业电话:</label>
                                                                                               <input name="enterPhone" type="text" class="form-control" id="exampleInputName2" placeholder="${enterprise.enterPhone}">
                                                                                               <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                               <tr>
                                                       <td>企业类型</td>
                                                       <td>${enterprise.enterType}</td>
                                                       <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser7">修改</button></td>
                                                       <div class="modal  fade" id="enterUser7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改enterType</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                               <label for="exampleInputName2">修改企业类型:</label>
                                                                                               <input name="enterType" type="text" class="form-control" id="exampleInputName2" placeholder="${enterprise.enterType}">
                                                                                               <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                               <tr>
                                                       <td>企业地点</td>
                                                       <td>${enterprise.enterLocation}</td>
                                                       <td> <button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#enterUser9">修改</button></td>
                                                       <div class="modal  fade" id="enterUser9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                               <div class="modal-dialog">
                                                                       <div class="modal-content">
                                                                               <div class="modal-header">
                                                                                       <h4 class="modal-title" id="myModalLabel">修改enterLocation</h4>
                                                                                       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                               </div>
                                                                               <div class="modal-body">
                                                                                       <form action="${pageContext.request.contextPath}/updateEnterprise">
                                                                                               <label for="exampleInputName2">修改企业地点:</label>
                                                                                               <input name="enterLocation" type="text" class="form-control" id="exampleInputName2" placeholder="${enterprise.enterLocation}">
                                                                                               <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                       </form>
                                                                               </div>

                                                                       </div>
                                                               </div>
                                                       </div>
                                               </tr>
                                       </table>

                                                   <%--求职者信息显示table--%>
                                           <table class=" table table-hover" id="seekerTable" style="text-align: center">
                                                   <tr><td colspan="7"><h2 style="font-weight: bold;text-align: center">面试者</h2></td></tr>
                                                   <tr style="font-weight: bold">
                                                           <th>求职者姓名</th>
                                                           <th>联系方式</th>
                                                           <th>求职者简历</th>
                                                           <th>面试状态</th>
                                                           <th>面试时间</th>
                                                           <th>面试结果</th>
                                                           <th>修改面试结果</th>
                                                   </tr>
                                                   <%
                                                           HireInfo hireInfo = (HireInfo) request.getAttribute("hireInfo");
                                                           if(hireInfo != null){
                                                                   for (int i = 0; i < hireInfo.getJobSeekers().size(); i++) {
                                                   %>
                                                   <tr>
                                                           <td><%=hireInfo.getJobSeekers().get(i).getSeekerName()%></td>
                                                           <td><%=hireInfo.getJobSeekers().get(i).getSeekerEmail()%></td>
                                                           <td><a href="<%=request.getContextPath()%>/static/resumes/resume_<%=hireInfo.getJobSeekers().get(i).getSeekerId()%>.docx">下载</a></td>
                                                           <td><%=hireInfo.getSeekHireInfos().get(i).getProcessStatus()%></td>
                                                           <td> <fmt:formatDate value="<%=hireInfo.getSeekHireInfos().get(i).getOrderInterviewTime()%>"/></td>
                                                           <td><%=hireInfo.getSeekHireInfos().get(i).getInterviewResult()%></td>

                                                           <td> <button type="button" style="width: 60px" class="btn btn-success"  data-toggle="modal" data-target="#interviewResult" id="interview">修改</button></td>
                                                           <div class="modal  fade" id="interviewResult" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                                   <div class="modal-dialog">
                                                                           <div class="modal-content">
                                                                                   <div class="modal-header">
                                                                                           <h4 class="modal-title" id="myModalLabel">修改interview_result</h4>
                                                                                           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                                   </div>
                                                                                   <div class="modal-body">
                                                                                           <form action="${pageContext.request.contextPath}/updateInterviewResult">
                                                                                                   <input type="hidden" value="<%=hireInfo.getJobSeekers().get(i).getSeekerId()%>" name="seekerId">
                                                                                                   <label for="exampleInputName2">修改面试者面试结果</label>
                                                                                                   <input name="interviewResult" type="text" class="form-control" id="exampleInputName2" placeholder="<%=hireInfo.getSeekHireInfos().get(i).getInterviewResult()%>">
                                                                                                   <button class="btn btn-primary" style="float: right;margin-top: 10px">提交修改</button>
                                                                                           </form>
                                                                                   </div>

                                                                           </div>
                                                                   </div>
                                                           </div>


                                                   </tr>
                                                   <%
                                                                   }
                                                           }
                                                   %>
                                           </table>

                                   </div>



                                   <div style="width: 55%;float: right">
                                               <table class="table table-hover" >
                                                       <tr><td colspan="7"><h1 style="font-weight: bold;text-align: center">已发布的招聘信息</h1></td></tr>
                                                       <tr style="font-weight: bold">
                                                               <td>ID</td>
                                                               <td>职位</td>
                                                               <td>资历(年)</td>
                                                               <td>语言</td>
                                                               <td>薪水(元)</td>
                                                               <td>学历</td>
                                                               <td>删除</td>
                                                               <td>查询</td>
                                                       </tr>
                                                       <c:forEach var="now_it" items="${enterprise.hireInfos}">
                                                               <tr>
                                                                       <td>${now_it.hireId}</td>
                                                                       <td>${now_it.hireOccupation}</td>
                                                                       <td>${now_it.hireYears}</td>
                                                                       <td>${now_it.hireLanguage}</td>
                                                                       <td>${now_it.hireSalary}</td>
                                                                       <td>${now_it.hireEducation}</td>
                                                                       <td><button style="margin-top: -5px;width: 60px" class="btn btn-danger">
                                                                               <a href="<%=request.getContextPath()%>/deleteHireInfo/${now_it.hireId}" style="color: white">删除</a></button></td>
                                                                       <td><button style="margin-top: -5px;width: 60px" class="btn btn-info" data-toggle="modal" data-target="#publishSeekerHireInfo" id="search_btn">
                                                                               <a href="<%=request.getContextPath()%>/findSeekerHireInfoByHireId?hireId=${now_it.hireId}" style="color: white">查询</a>
                                                                       </button></td>
                                                               </tr>
                                                       </c:forEach>
                                                       <tr>
                                                               <td colspan="8"> <button style="width: 100%" type="button" class="btn btn-primary btn-lg"  data-toggle="modal" data-target="#publishHire" >发布招聘信息</button></td>
                                                               <div class="modal  fade" id="publishHire" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                                       <div class="modal-dialog">
                                                                               <div class="modal-content">
                                                                                       <div class="modal-header">
                                                                                               <h4 class="modal-title" id="myModalLabel">发布招聘信息</h4>
                                                                                               <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                                                       </div>
                                                                                       <div class="modal-body">
                                                                                               <form action="${pageContext.request.contextPath}/publishHireInfo">
                                                                                                       <input type="hidden" name="enterId" value="${enterprise.enterId}">
                                                                                                       <label>薪资待遇:</label><input name="hireSalary" class="form-control" type="text">
                                                                                                       <label>工作经验(年):</label><input name="hireYears" class="form-control" type="text">
                                                                                                       <label>学历要求:</label><input name="hireEducation" class="form-control" type="text">
                                                                                                       <label>语言限制:</label><input name="hireLanguage" class="form-control" type="text">
                                                                                                       <label>职位名称:</label><input name="hireOccupation" class="form-control" type="text">
                                                                                                       <button type="submit" class="btn btn-success" style="float: right;margin-top: 10px">发布信息</button>
                                                                                               </form>

                                                                                       </div>

                                                                               </div>
                                                                       </div>
                                                               </div>
                                                       </tr>
                                               </table>
                                       </div>


                               </div>
                        </c:if>
                </div>
        </shiro:hasRole>

</body>

<script src="${pageContext.request.contextPath}/static/UI/script-leftsight.js"></script>
<script src="${pageContext.request.contextPath}/static/UI/waterfall-sortable.min.js"></script>
<script type="text/javascript">
        document.querySelector('#sortable').sortablejs()
</script>
<script>
        //表格点击
        var aGroup= document.querySelectorAll(".sub-inner-box .sub-row a");

        var form = document.querySelector("#formToOccupation");
       for (var i=0; i<aGroup.length ;i++){
           aGroup[i].onclick=function(){
               form.firstElementChild.value =  this.innerHTML;
               form.submit();
               return false;

           }
       }

        //管理员界面
        var jobSeekerForm = document.querySelector("#jobSeeker");
        var enterForm = document.querySelector("#enterprise");

        var switchToEnter =  jobSeekerForm.firstElementChild.firstElementChild.children[1];

        switchToEnter.onclick = function(){
            jobSeekerForm.style.display = "none";
            enterForm.style.display = "";
        }

        var switchToSeeker =  enterForm.firstElementChild.firstElementChild.children[0];

        switchToSeeker.onclick = function(){
            enterForm.style.display = "none";
            jobSeekerForm.style.display = "";
        }

        //封禁用户
        var banSeeker = document.querySelectorAll("[seekerId]");
        var banForm = document.querySelector("#banForm");
        for(var i= 0 ; i< banSeeker.length;i++){
            banSeeker[i].onclick=function () {
               var seekerId =  this.getAttribute("seekerId");
               var ret = confirm("确定要删除该用户吗?");
               if(ret){
                        banForm.firstElementChild.value=seekerId;
                        banForm.submit();
               }
            }
        }

        var banEnter = document.querySelectorAll("[enterId]");

        for(var i= 0 ; i< banEnter.length;i++){
            banEnter[i].onclick=function () {
                var enterId = this.getAttribute("enterId");
                var ret = confirm("确定要删除该用户吗?");
                if(ret){
                    banForm.children[1].value=enterId;
                    banForm.submit();
                }
            }
        }


</script>

</html>
