<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="shrio" uri="http://shiro.apache.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/3
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
<head>

        <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/pricing/">

        <!-- Bootstrap core CSS -->
        <link href="../assets/dist/css/bootstrap.css" rel="stylesheet">
        <script src="${pageContext.request.contextPath}/static/BUI/js/jquery-3.3.1.js"></script>

        <style>
                .bd-placeholder-img {
                        font-size: 1.125rem;
                        text-anchor: middle;
                        -webkit-user-select: none;
                        -moz-user-select: none;
                        -ms-user-select: none;
                        user-select: none;
                }

                @media (min-width: 768px) {
                        .bd-placeholder-img-lg {
                                font-size: 3.5rem;
                        }
                }

                html {
                        font-size: 14px;
                }

                @media (min-width: 768px) {
                        html {
                                font-size: 16px;
                        }
                }

                .container {
                        max-width: 960px;
                }

                .pricing-header {
                        max-width: 700px;
                }

                .card-deck .card {
                        min-width: 220px;
                }

        </style>

        <title>码农招聘平台</title>
</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center" style="font-family: 'kaiti';font-weight: bold">
        <h1 class="display-4">关于我们</h1>
        <p class="lead">商务合作: 572299072@qq.com <br>
                商务QQ: 572299072 <br>
                这是一个学习时测试的网站,具体使用问题 <br>
                以及bug报错欢迎通过下方联系我们,当然你也可以进行捐助<br>以推进我们的网页开发~</p>


</div>

<div class="container" style="font-family: 'kaiti';font-weight: bold">
        <div class="card-deck mb-3 text-center">

                <div class="card mb-6 shadow-sm">
                        <div class="card-header">
                                <h4 class="my-0 font-weight-normal">联系我们</h4>
                        </div>
                        <div class="card-body">
                                <h4 class="card-title pricing-card-title">在下方输入您要反馈的内容:<small class="text-muted">(邮件)</small></h4>
                                <div class="form-group">
                                        <label for="exampleFormControlTextarea1"></label>
                                        <form action="${pageContext.request.contextPath}/sendEmail">
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="4" resize="none" name="content"></textarea>
                                                <input type="hidden" name="isGiveback" value="true"/>
<%--                                                模态框--%>
                                                <div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                        <div class="modal-dialog">
                                                                <div class="modal-content">
                                                                        <div class="modal-header">
                                                                                <h5 class="modal-title" id="exampleModalLabel">感谢您的反馈~</h5>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                        <span aria-hidden="true">&times;</span>
                                                                                </button>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                                <input type="hidden" name="receiver" value="572299072@qq.com">
                                                                                <span>您的邮箱:</span>
                                                                                <input type="email" class="form-control" name="email" value="<shrio:principal />">
                                                                                <span>您的二级密码:</span>
                                                                                <input type="password" class="form-control" name="pwd" placeholder="password" value="tmsyvdgmbumjbffa"/>
                                                                                <span>标题:(可选):</span>
                                                                                <input type="text"  class="form-control" name="subject" placeholder="subject" value="反馈信息"/>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                                                                <button type="submit" class="btn btn-primary" onclick="alert('感谢您的反馈')">发送</button>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                </div>
                                        </form>
                                </div>
                                <button type="button" class="btn btn-lg btn-block btn-outline-success" data-toggle="modal" data-target="#exampleModal2"> 以当前邮箱发送邮件</button>
                                </a>
                        </div>
                        </form>
                </div>

                <div class="card mb-6 shadow-sm">
                        <div class="card-header">
                                <h4 class="my-0 font-weight-normal">支持我们</h4>
                        </div>
                        <div class="card-body">
                                <h4 class="card-title pricing-card-title">选择您的捐赠金额: <small class="text-muted">(元)</small></h4>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$10</button>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$20</button>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$30</button>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$40</button>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$50</button>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$60</button>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$70</button>
                                <button style="width: 80px;height: 50px;float: left;margin-left: 40px;margin-top: 10px" type="button" class="btn btn-outline-primary dolor">$80</button>
                                <button type="button" class="btn btn-lg btn-block btn-outline-primary" style="position:relative;top: 31px" data-toggle="modal" data-target="#exampleModal">
                                        捐赠
                                </button>
                                <!-- Modal -->
                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                                <div class="modal-content">
                                                        <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">感谢您的捐赠~</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                </button>
                                                        </div>
                                                        <div class="modal-body">

                                                        </div>
                                                        <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
</div>
</body>
<script>
    //捐赠
    var $buttonList = $(".dolor");
    for (var i = 0; i < $buttonList.length; i++) {
        $buttonList[i].index = i;
        $buttonList[i].onclick = function () {

            for (var j = 0; j < $buttonList.length; j++) {
                $($buttonList[j]).removeClass().addClass("btn btn-outline-primary").css("color", "blue");
            }

            $(this).addClass("btn btn-primary").css("color", "white");
            $(".modal-body").empty().append("<img style='width:50%' src='${pageContext.request.contextPath}/static/pay/pay" + (this.index + 1) + ".JPG'>");
        }
    }


</script>

</html>
