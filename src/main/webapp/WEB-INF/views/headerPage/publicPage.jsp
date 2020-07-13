<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/fonts/iconfont.css">
    <title>码农招聘平台</title>
    <style>
        .container-fluid{
            padding: 0;
        }
        .public-nav{
            padding-right: 60px;
            padding-left: 60px;
        }
        .email{
            margin: auto 15px;
        }
        a.navbar-brand{
            margin-right: 30px;
        }
        li.nav-item{
            margin-right: 15px;
        }
        nav>i{
            display: inline-block;
            width: 40px;
            height: 35px;
            margin-bottom: 8px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <nav class="public-nav navbar navbar-expand-lg navbar-light bg-light">
        <i class="iconfont icon-diannao1"></i>
        <a class="navbar-brand font-weight-bold" href="<%=request.getContextPath()%>/index.jsp">码农招聘平台</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <shiro:hasRole name="seeker">
            <ul class="navbar-nav mr-auto font-weight-bold">
                <li class="nav-item active">
                    <a class="nav-link" href="<%=request.getContextPath()%>/index.jsp">首页</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="<%=request.getContextPath()%>/findJob">职位</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="<%=request.getContextPath()%>/enterprise">公司</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="https://www.proginn.com/">资讯</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="<%=request.getContextPath()%>/infos">关于</a>
                </li>
            </ul>
            </shiro:hasRole>
            <shiro:hasRole name="enterprise">
                <ul class="navbar-nav mr-auto font-weight-bold">
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">首页</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">职位</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">公司</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">资讯</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#" tabindex="-1" >赞助</a>
                    </li>
                </ul>
            </shiro:hasRole>
            <shiro:hasRole name="admin">
                <ul class="navbar-nav mr-auto font-weight-bold">
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">首页</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">职位</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">公司</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#">资讯</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link disabled" href="#" tabindex="-1" >赞助</a>
                    </li>
                </ul>
            </shiro:hasRole>

            <form class="form-inline my-2 my-lg-0">
                <span class="active font-weight-bold">
                    <shiro:hasRole name="admin">欢迎来到管理员界面
                        <a href="#" class="email btn btn-outline-dark font-weight-bold">
                        <shiro:principal></shiro:principal></a>
                    </shiro:hasRole>
                    <shiro:hasRole name="enterprise">欢迎来到企业人员界面
                        <a href="#" class="email btn btn-outline-dark font-weight-bold">
                        <shiro:principal></shiro:principal></a>
                    </shiro:hasRole>
                    <shiro:hasRole name="seeker">欢迎来到求职者界面
                        <a  href="${pageContext.request.contextPath}/toHomePage?email=<shiro:principal></shiro:principal>" class="email btn btn-outline-dark font-weight-bold">
                        <shiro:principal></shiro:principal></a>
                    </shiro:hasRole>
                </span>

                <shiro:authenticated>
                    <a class="logout btn btn-outline-dark my-2 my-sm-0 font-weight-bold" href="<%=request.getContextPath()%>/logout">登出</a>
                </shiro:authenticated>
            </form>
            <shiro:guest>
                <a style="float: right" class="logout btn btn-outline-dark my-2 my-sm-0 font-weight-bold" href="${pageContext.request.contextPath}/index.jsp">返回</a>
            </shiro:guest>
        </div>
    </nav>
</div>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${pageContext.request.contextPath}/static/BUI/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath}/static/BUI/js/proper.js"></script>
<script src="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/js/bootstrap.js"></script>

</body>
</html>

