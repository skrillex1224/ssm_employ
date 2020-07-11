<%--
  User: 57229
  Date: 2020/7/3
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html lang="en">
<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/fonts/iconfont.css">
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="${pageContext.request.contextPath}/static/BUI/js/jquery-3.3.1.js"></script>
        <script src="${pageContext.request.contextPath}/static/BUI/js/proper.js"></script>
        <script src="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/js/bootstrap.js"></script>

        <title>码农招聘平台</title>
        <style>
                *{
                        margin: 0;
                        padding: 0;
                }
                .card{
                        margin-top: 30px;
                }
                .card-header{
                        padding: 0;
                        height: 80px;
                        width: 100%;
                        border-top: #49af4f 3px solid;
                        box-sizing: border-box;
                        text-align: center;
                }
                .col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11, .col-12, .col, .col-auto, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm, .col-sm-auto, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-md, .col-md-auto, .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg, .col-lg-auto, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xl, .col-xl-auto {
                        padding-right: 0;
                        padding-left: 0;
                }
                .card-header>i{
                        display: inline-block;
                        width: 40px;
                        height: 80px;
                        padding-bottom: 15px;
                }
                .card-header>span{
                        display: inline-block;
                        font-size: 30px;
                        height: 80px;
                        line-height: 80px;
                        padding-bottom: 15px;
                }
        </style>
</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>
<div class="card shadow col-4 offset-4">
        <div class="card-header">
                <i class="iconfont icon-denglu"></i>
                <span class="text-secondary">企业者注册</span>
        </div>
        <div class="card-body">
                <form action="${pageContext.request.contextPath}/enterRegistry" method="POST" enctype="multipart/form-data">
                        <div class="form-group row">
                                <label for="inputName" class="col-sm-3 col-form-label">企业名称</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputName">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label for="staticEmail" class="col-sm-3 col-form-label">企业邮箱</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" id="staticEmail" >
                                </div>
                        </div>
                        <span class="msg"></span>
                        <div class="form-group row">
                                <label for="inputPassword" class="col-sm-3 col-form-label">密码</label>
                                <div class="col-sm-9">
                                        <input type="password" class="form-control" id="inputPassword">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label for="inputPassword2" class="col-sm-3 col-form-label">确认密码</label>
                                <div class="col-sm-9">
                                        <input type="password" class="form-control" id="inputPassword2">
                                </div>
                        </div>

                        <div class="form-group row">
                                <label for="inputEName" class="col-sm-3 col-form-label">法人姓名</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputEName">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label for="inputType" class="col-sm-3 col-form-label">公司类型</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputType">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label for="inputAdress" class="col-sm-3 col-form-label">公司地址</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputAdress">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label for="inputTel" class="col-sm-3 col-form-label">咨询电话</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" id="inputTel">
                                </div>
                        </div>

                        <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupFileAddon01">上传公司图标</span>
                                </div>
                                <div class="custom-file">
                                        <input type="file" class="custom-file-input" id="inputGroupFile01">
                                        <label class="custom-file-label" for="inputGroupFile01">选择文件</label>
                                </div>
                        </div>

                        <div class="form-group">
                                <label for="exampleFormControlTextarea1">公司简介</label>
                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                        </div>
                        <input type="submit" class="btn btn-outline-success col-2" value="提交">
                </form>
        </div>
</div>

<%--<h1>企业者注册</h1>
<form action="${pageContext.request.contextPath}/enterRegistry" method="POST" enctype="multipart/form-data">

        企业名字:<input type="text" name="enterName">
        企业邮箱:<input type="text" name="enterEmail">
        <br><span class="msg"></span><br>
        密码:<input class="pwd" type="password" name="enterPassword">
        确认密码:<input class="pwd" type="password" />
        法人姓名:<input type="text" name="enterUsername">
        公司类别:<input type="text" name="enterType">
        公司地址:<input type="text" name="enterLocation">
        咨询电话:<input type="text" name="enterPhone">
        上传公司图标:<input type="file" name="icon">
        公司简介:<textarea name="enterInfo"></textarea>
        <input type="submit" value="提交">
</form>--%>

</body>
</html>

