<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
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
        <%--        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/layui.css ">--%>
        <%--        <script type="text/javascript" src="${pageContext.request.contextPath}/static/UI/layui.js"></script>--%>
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
                <span class="text-secondary">招聘者注册</span>
        </div>
        <div class="card-body">
                <form action="<%=request.getContextPath()%>/seekerRegistry" method="POST" enctype="multipart/form-data">
                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">姓名</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" name="seekerName">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">邮箱</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" id="seekerEmail" name="seekerEmail" lay-verify="required|seekerEmail">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">密码</label>
                                <div class="col-sm-9">
                                        <input type="password" class="form-control" name="seekerPassword">
                                </div>
                        </div>

                        <div class="form-group row">
                                <label  class="col-sm-3 col-form-label">确认密码</label>
                                <div class="col-sm-9">
                                        <input type="password" class="form-control" id="secondPassword" lay-verify="required|confirmPass">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">年龄</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" name="seekerAge">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">工作经验(年)</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" name="seekerYears">
                                </div>
                        </div>
                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">学历</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" name="seekerEduc">
                                </div>
                        </div>

                        <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                        <span class="input-group-text">上传简历</span>
                                </div>
                                <div class="custom-file">
                                        <input type="file" class="custom-file-input" name="resume">
                                        <label class="custom-file-label">选择文件</label>
                                </div>
                        </div>

                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">语言</label>
                                <div class="col-sm-9">
                                        <input type="text" class="form-control" name="seekerLanguage">
                                </div>
                        </div>

                        <div class="form-group row">
                                <label class="col-sm-3 col-form-label">性别</label>
                                <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="seekerGender" id="inlineRadio1" value="1">
                                        <label class="form-check-label" for="inlineRadio1">男</label>
                                </div>
                                <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="seekerGender" id="inlineRadio2" value="0">
                                        <label class="form-check-label" for="inlineRadio2">女</label>
                                </div>
                        </div>
                        <input type="submit"  id="btnSubmit" class="btn btn-outline-success col-2" value="提交">
                        <span class="alert alert-danger" id="alertSpan" role="alert" style="margin-left: 50px;display: none;">两次密码输入不一致</span>
                </form>
        </div>
</div>




<script type="text/javascript">
    $(document).ready(function () {
        //验证二次密码输入

        $("#btnSubmit").on("click",function () {
            if ($(".seekerPassword").val() != $("#secondPassword").val() && $("#secondPassword").val() != null && $(".seekerPassword").val() != null) {
                $("#alertSpan").css("display","inline");
                return false;
            }

            //邮箱格式判断
            var seekerEmail = $("#seekerEmail").val();
            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (!myreg.test(seekerEmail)){
                alert("邮箱格式错误");
                return false;
            }

            //验证邮箱是否和数据库中的邮箱重复
            var message = '';
            $.ajax({
                url:"<%=request.getContextPath()%>/emailVerify",
                type: "post",
                data: {"seekerEmail":seekerEmail},
                success:function (data1) {
                    if (data1 == "true"){
                    } else {
                        message = "您输入的邮箱重复，请重新输入";
                        return false;
                    }
                }
            });
            if (message !== ''){
                alert(message);
                return false;
            }
        });
    });
</script>

<%--<script type="text/javascript">--%>
<%--&lt;%&ndash;        动态获取.pwd 的两个value值,进行比对&ndash;%&gt;--%>

<%--        layui.use(["form","jquery","upload"],function () {--%>
<%--                var form = layui.form;--%>
<%--                var $ = layui.jquery;--%>
<%--                var upload = layui.upload;--%>

<%--                //验证密码--%>
<%--                form.verify({--%>
<%--                        confirmPass:function(value){--%>
<%--                                if($("input[name=seekerPassword]").val() !== value)--%>
<%--                                        return '两次密码输入不一致！';--%>
<%--                        }--%>
<%--                });--%>
<%--                //邮箱重复认证--%>
<%--                form.verify({--%>
<%--                        seekerEmail:function(value){--%>
<%--                                //var params = {"seekerEmail":value };--%>
<%--                                var seekerEmail = $("#seekerEmail").val();--%>
<%--                                var message = '';--%>
<%--                                $.ajax({--%>
<%--                                        url: "emailVerify",--%>
<%--                                        contentType: "application/json",--%>
<%--                                        dataType:'json',--%>
<%--                                        type: "get",--%>
<%--                                        async: false,--%>
<%--                                        data: {seekerEmail:seekerEmail},--%>
<%--                                        success: function(data) {--%>
<%--                                                if(data){--%>
<%--                                                } else {--%>
<%--                                                        message = "您所输入的邮箱重复，请重新输入"--%>
<%--                                                }--%>
<%--                                        },--%>
<%--                                });--%>
<%--                                if (message !== '') {--%>
<%--                                        return message;--%>
<%--                                }--%>
<%--                        }--%>
<%--                });--%>
<%--        });--%>
<%--</script>--%>

</html>
