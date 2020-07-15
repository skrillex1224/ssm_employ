<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>码农招聘平台</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/layui.css ">
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/UI/layui.js"></script>
<%--        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/jquery-labelauty.css">--%>
        <style type="text/css">
                * {
                        box-sizing: border-box;
                }
                body {
                        margin: 0;
                        padding: 0;
                        font: 16px/20px microsft yahei;
                }
                .input{
                        background-color: rgba(255,255,255,0.3);
                        color: white;
                }

                input::-webkit-input-placeholder,
                textarea::-webkit-input-placeholder {
                    /* WebKit browsers */
                    color: #fff;
                    font-family: "Tekton Pro";
                }
                .wrap {
                        width: 100%;
                        height: 100%;
                        padding: 10% 0;
                        position: fixed;
                        opacity: 0.8;
                        background: linear-gradient(to bottom right,#000000, #656565);
                        background: -webkit-linear-gradient(to bottom right,#50a3a2,#53e3a6);
                }
                .container {
                        width: 60%;
                        margin: 0 auto;
                }
                        .container h1 {
                        text-align: center;
                        color: #FFFFFF;
                        font-weight: 500;
                }
                .container input {
                        width: 280px;
                        display: block;
                        height: 50px;
                        border: 0;
                        outline: 0;
                        padding: 6px 10px;
                        line-height: 24px;
                        margin: 32px auto;
                        -webkit-transition: all 0s ease-in 0.1ms;
                        -moz-transition: all 0s ease-in 0.1ms;
                        transition: all 0s ease-in 0.1ms;
                }
                .container input[type="text"] , .container input[type="password"]  {
                        background-color: rgba(255,255,255,0.2);
                        font-size: 18px;
                        color: #50a3a2;
                }
                .container input[type='submit'] {
                    background-color: rgba(255,255,255,0.2);
                    color: white;
                    font-family: 'Tekton Pro';
                    font-size: 18px;
                }
                .container input[type='radio']{
                    padding: 6px 10px;
                    line-height: 24px;
                    margin: 32px auto;
                    float: left;
                    clear: none;
                    margin: 2px 0 0 2px;
                }
                .container input:focus {
                    background-color: rgba(255,255,255,0.4);

                }
                .container input[type='submit']:hover {
                    background-color: rgba(255,255,255,0.8);
                    color: cornflowerblue;
                    font-family: 'Tekton Pro';
                    font-size: 18px;
                    transition: all 0.5s linear;
                }
                .to_login{
                        font-family: "等线 Light";
                        font-size: 18px;
                        text-decoration : none;
                        color: #a7c4c9;
                }
                .to_login:hover{
                    background-color: rgba(255,255,255,0.3);
                    color: cornflowerblue;
                    font-family: "等线 Light";
                    font-size: 18px;
                    transition: all 0.25s linear;
                }
                .text{
                        font-family: 迷你简卡通;
                        font-size: 18px;
                        color: #e2dfe4;
                }
                .wrap ul {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        z-index: -20;
                }
                .wrap ul li {
                        list-style-type: none;
                        display: block;
                        position: absolute;
                        bottom: -120px;
                        width: 15px;
                        height: 15px;
                        z-index: -8;
                        border-radius: 50%;
                        box-shadow: inset -30px -30px 75px rgba(0, 0, 0, .2),
                        inset 0px 0px 5px rgba(0, 0, 0, .5),
                        inset -3px -3px 5px rgba(0, 0, 0, .5),
                        0 0 20px rgba(255, 255, 255, .75);
                        background-color:rgba(255, 255, 255, 0.25);
                        animotion: square 25s infinite;
                        -webkit-animation: square 25s infinite;
                }
                .wrap ul li:nth-child(1) {
                        left: 0;
                        animation-duration: 10s;
                        -moz-animation-duration: 10s;
                        -o-animation-duration: 10s;
                        -webkit-animation-duration: 10s;
                }
                .wrap ul li:nth-child(2) {
                        width: 40px;
                        height: 40px;
                        left: 10%;
                        animation-duration: 15s;
                        -moz-animation-duration: 15s;
                        -o-animation-duration: 15s;
                        -webkit-animation-duration: 11s;
                }
                .wrap ul li:nth-child(3) {
                        left: 20%;
                        width: 25px;
                        height: 25px;
                        animation-duration: 12s;
                        -moz-animation-duration: 12s;
                        -o-animation-duration: 12s;
                        -webkit-animation-duration: 12s;
                }
                .wrap ul li:nth-child(4) {
                        width: 50px;
                        height: 50px;
                        left: 30%;
                        -webkit-animation-delay: 3s;
                        -moz-animation-delay: 3s;
                        -o-animation-delay: 3s;
                        animation-delay: 3s;
                        animation-duration: 12s;
                        -moz-animation-duration: 12s;
                        -o-animation-duration: 12s;
                        -webkit-animation-duration: 12s;
                }
                .wrap ul li:nth-child(5) {
                        width: 60px;
                        height: 60px;
                        left: 40%;
                        animation-duration: 10s;
                        -moz-animation-duration: 10s;
                        -o-animation-duration: 10s;
                        -webkit-animation-duration: 10s;
                }
                .wrap ul li:nth-child(6) {
                        width: 75px;
                        height: 75px;
                        left: 50%;
                        -webkit-animation-delay: 7s;
                        -moz-animation-delay: 7s;
                        -o-animation-delay: 7s;
                        animation-delay: 7s;
                }
                .wrap ul li:nth-child(7) {
                        left: 60%;
                        width: 30px;
                        height: 30px;
                        animation-duration: 8s;
                        -moz-animation-duration: 8s;
                        -o-animation-duration: 8s;
                        -webkit-animation-duration: 8s;
                }
                .wrap ul li:nth-child(8) {
                        width: 90px;
                        height: 90px;
                        left: 70%;
                        -webkit-animation-delay: 4s;
                        -moz-animation-delay: 4s;
                        -o-animation-delay: 4s;
                        animation-delay: 4s;
                }
                .wrap ul li:nth-child(9) {
                        width: 50px;
                        height: 50px;
                        left: 80%;
                        animation-duration: 20s;
                        -moz-animation-duration: 20s;
                        -o-animation-duration: 20s;
                        -webkit-animation-duration: 20s;
                }
                .wrap ul li:nth-child(10) {
                        width: 75px;
                        height: 75px;
                        left: 90%;
                        -webkit-animation-delay: 6s;
                        -moz-animation-delay: 6s;
                        -o-animation-delay: 6s;
                        animation-delay: 6s;
                        animation-duration: 30s;
                        -moz-animation-duration: 30s;
                        -o-animation-duration: 30s;
                        -webkit-animation-duration: 30s;
                }
                @keyframes square {
                        0% {
                                -webkit-transform: translateY(0);
                                transform: translateY(0)
                        }
                        100% {
                                bottom: 400px;
                                -webkit-transform: translateY(-500);
                                transform: translateY(-500)
                        }
                }
                @-webkit-keyframes square {
                        0% {
                                -webkit-transform: translateY(0);
                                transform: translateY(0)
                        }
                        100% {
                                bottom: 400px;
                                -webkit-transform: translateY(-500);
                                transform: translateY(-500)
                        }
                }
                .container ul { list-style-type: none;}
                .container li { display: inline-block;
                       margin: 10px 0;}
                input.labelauty + label { font: 12px "Microsoft Yahei";}

        </style>

</head>
<body>

        <div class="wrap" >
            <!--登陆界面,暂时没有实现双身份登陆-->
                    <div class="container">
                        <h1 style="color: white; margin: 0; text-align: center;font-family: 迷你简卡通;">Log in</h1>
                        <form action="<%=request.getContextPath()%>/login" method="post">
                                <h4 style="color: red;text-align: center;"> ${msg}</ h4>
<%--                                <div class="container" style="align-content: center">--%>
<%--                                    <div style="width: 30%;display:inline-block;align-content: center"><input type="radio" name="radio" style="display: inline" data-labelauty="视觉设计师"></div>--%>
<%--                                    <div style="width: 40%;display:inline-block;align-content: center"><input type="radio" name="radio" style="display: inline" data-labelauty="交互设计师"></div>--%>
<%--                                </div>--%>
                                <label ><input type="text" name="email" style="background-color: rgba(255,255,255,0.3);color: white;"  placeholder="Your email"/></label>
                                <label ><input type="password" name="password" class="input" placeholder="Password" /></label>
<%--                                <label ><input type="password" name="password" class="input"  placeholder="Please confirm your password" /></label>--%>

                            <input type="submit"  value="Log in"/>
                            <p class="change_link" style="text-align: center">
                                <span class="text">Already a member ? &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="toSeekerRegistry" class="to_login">求职者注册</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="toEnterRegistry" class="to_login">企业用户注册</a>
                               
                            </p>
                        </form>
                    </div>
            <!--气泡效果-->
                    <ul>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
        </div>
<%--<form action="<%=request.getContextPath()%>/login" method="post">--%>
<%--        <h4 style="color: red"> ${msg}</h4>--%>
<%--        邮箱:<input type="text" name="email" />--%>
<%--        <br>密码:<input type="password" name="password" />--%>
<%--        <input type="submit" value="登录">--%>

<%--        <a href="toSeekerRegistry">求职者注册</a>--%>
<%--        <a href="toEnterRegistry">企业用户注册</a>--%>
<%--</form>--%>
</body>
</html>
