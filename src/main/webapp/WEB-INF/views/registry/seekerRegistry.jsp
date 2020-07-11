<%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/3
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
<head>
        <title>码农招聘平台</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/layui.css ">
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/UI/layui.js"></script>
</head>
<body>

        <div class="layui-container">
            <h1>招聘者注册<a href="#"><i class="layui-icon">&#xe60c;</i></a></h1>
                <form action="<%=request.getContextPath()%>/seekerRegistry" class="layui-form" enctype="multipart/form-data" method="post">
                        <div class="layui-form-item">
                                <label class="layui-form-label">姓名</label>
                                <div class="layui-input-inline">
                                        <input type="text" name="seekerName" class="layui-input">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">邮箱</label>
                                <div class="layui-input-inline">
                                        <input type="text" id="seekerEmail" name="seekerEmail" lay-verify="required|seekerEmail" class="layui-input">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">密码</label>
                                <div class="layui-input-inline">
                                        <input  type="password" name="seekerPassword" class="layui-input" lay-verify="required">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">确认密码</label>
                                <div class="layui-input-inline">
                                        <input type="password" class="layui-input" lay-verify="required|confirmPass"/>
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">年龄</label>
                                <div class="layui-input-inline">
                                        <input type="text" name="seekerAge" class="layui-input">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">工作经验(年)</label>
                                <div class="layui-input-inline">
                                        <input type="text" name="seekerYears" class="layui-input">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">学历</label>
                                <div class="layui-input-inline">
                                        <input type="text" name="seekerEduc" class="layui-input">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">语言</label>
                                <div class="layui-input-inline">
                                        <input type="text" name="seekerLanguage" class="layui-input">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">性别</label>
                                <div class="layui-input-block">
                                        <input type="radio" name="seekerGender" value="1" title="男" checked>
                                        <input type="radio" name="seekerGender" value="0" title="女">
                                </div>
                        </div>
                        <div class="layui-form-item">
                                <label class="layui-form-label">上传简历</label>
                                <div class="layui-input-inline">
                                    <input type="file" name="resume" class="layui-input">
                                </div>
                        </div>



                        <div class="layui-form-item">
                                <div class="layui-input-block">
                                        <button class="layui-btn" lay-submit >立即提交</button>
                                </div>
                        </div>
<%--                        姓名:<input type="text" name="seekerName"><br>--%>
<%--                        邮箱:<input type="text" name="seekerEmail"><br>--%>
<%--                        <span class="msg"></span><br>--%>
<%--                        密码:<input class="pwd" type="password" name="seekerPassword" id="p1"><br>--%>
<%--                        确认密码:<input class="pwd" type="password" id="p2" onkeyup="validate()"/><br>--%>
<%--                        年龄:<input type="text" name="seekerAge"><br>--%>
<%--                        工作经验(年):<input type="text" name="seekerYears"><br>--%>
<%--                        学历:<input type="text" name="seekerEduc"><br>--%>
<%--                        语言:<input type="text" name="seekerLanguage"><br>--%>
<%--                        性别:<input type="radio" class="rad" name="seekerGender" value="1">男--%>
<%--                        <input type="radio" class="rad" name="seekerGender" value="0">女--%>
<%--                        <br>--%>
<%--                        上传简历:<input type="file" name="seekerResume">--%>
<%--                        <br>--%>
<%--                        <input type="submit" value="提交">--%>
                </form>
        </div>

</body>

<script type="text/javascript">
<%--        动态获取.pwd 的两个value值,进行比对--%>

        layui.use(["form","jquery","upload"],function () {
                var form = layui.form;
                var $ = layui.jquery;
                var upload = layui.upload;

                //验证密码
                form.verify({
                        confirmPass:function(value){
                                if($("input[name=seekerPassword]").val() !== value)
                                        return '两次密码输入不一致！';
                        }
                });
                //邮箱重复认证
                form.verify({
                        seekerEmail:function(value){
                                //var params = {"seekerEmail":value };
                                var seekerEmail = $("#seekerEmail").val();
                                var message = '';
                                $.ajax({
                                        url: "emailVerify",
                                        contentType: "application/json",
                                        dataType:'json',
                                        type: "get",
                                        async: false,
                                        data: {seekerEmail:seekerEmail},
                                        success: function(data) {
                                                if(data){
                                                } else {
                                                        message = "您所输入的邮箱重复，请重新输入"
                                                }
                                        },
                                });
                                if (message !== '') {
                                        return message;
                                }
                        }
                });

        });
</script>

</html>
