<%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/3
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html lang="en">
<head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css">
        <title>码农招聘平台</title>
        <style>
            .nav_bar{
                margin-top: 20px;
            }
            .footer{
                margin-top: 30px;
                width: 100%;
                height: 120px;
                    text-align: center;
            }
                .list-group-item>span{
                        display: inline-block;
                        width: 80px;
                        height: 100%;
                }
            .list-group-item>span:nth-child(2){
                    width: 50px;
            }
            .list-group-item>span:nth-child(3){
                    width: 50px;
            }
            .list-group-item>span:nth-child(4){
                    width: 50px;
            }
            .list-group-item>span:nth-child(5){
                    width: 50px;
            }
            .list-group-item>span:nth-child(6){
                    width: 150px;
            }
            .list-group-item>span:nth-child(7){
                    width: 50px;
            }
            .ul_left{
                    margin-left: 62px;
            }
            .ul_right{
                    margin-right: 62px;
            }
        </style>

</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>


<form id="filterForm" class="row offset-2 mt-5" action="${pageContext.request.contextPath}/filterOccupation">
        <input type="hidden" name="hireOccupation" value="${hireInfos.get(0).hireOccupation}">
        <div class="col-3 input-group mb-3">
                <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">薪水</label>
                </div>
                <select name="hireSalary" class="custom-select" id="inputGroupSelect01">
                        <option value="0">薪水</option>
                        <option value="3000">3000以上</option>
                        <option value="6000">6000以上</option>
                        <option value="10000">10000以上</option>
                </select>
        </div>

        <div class="col-3 input-group mb-3">
                <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">工作经验</label>
                </div>
                <select name="hireYears" class="custom-select" id="inputGroupSelect01">
                        <option value="0">工作经验(年)</option>
                        <option value="1">1年以上</option>
                        <option value="3">3年以上</option>
                        <option value="5">5年以上</option>
                </select>
        </div>

        <div class="col-3 input-group mb-3">
                <div class="input-group-prepend">
                        <label class="input-group-text" for="inputGroupSelect01">学历</label>
                </div>
                <select name="hireEducation" class="custom-select" id="inputGroupSelect01">
                        <option value="无要求">教育经历</option>
                        <option value="大学专科">大学专科</option>
                        <option value="大学本科">大学本科</option>
                        <option value="研究生">研究生</option>
                        <option value="博士学位">博士学位</option>
                </select>
        </div>
        <input type="hidden" name="pn" />
        <button type="submit" class="btn btn-outline-dark" style="position: relative;z-index: 999">筛选</button>
</form>

<table class="table table-hover" style="width: 80%;margin-left: 10%">
        <tr>
                <td>职位</td>
                <td>语言</td>
                <td>学历</td>
                <td>工资</td>
                <td>工作经验</td>
                <td>企业邮箱</td>
                <td>企业名称</td>
                <td>企业类型</td>
                <td>联系电话</td>
                <td>法人姓名</td>
                <td>详细信息</td>
        </tr>
<c:forEach items="${hireInfos}" var="now_it">
        <tr>
                <td>${now_it.hireOccupation}</td>
                <td>${now_it.hireLanguage}</td>
                <td>${now_it.hireEducation}</td>
                <td>${now_it.hireSalary}</td>
                <td>${now_it.hireYears}年</td>
                <td>${now_it.enterprise.enterEmail}</td>
                <td>${now_it.enterprise.enterName}</td>
                <td>${now_it.enterprise.enterType}</td>
                <td>${now_it.enterprise.enterPhone}</td>
                <td>${now_it.enterprise.enterUsername}</td>
                <td><button class="btn btn-outline-dark btn-sm"><a href="${pageContext.request.contextPath}/seeParticularInfo?hireId=${now_it.hireId}">查看详情</a></button></td>
        </tr>
</c:forEach>
</table>

<nav class="nav_bar clearfix" aria-label="Page navigation example " style="cursor: pointer">
        <ul  style="margin-left: 10.2%"  class="ul_left pagination  pagination-lg float-left">
                <li class="page-item" >
                        <a class="page-link" aria-label="Previous"  >
                                <span>&laquo;</span>
                        </a>
                </li>
                <c:forEach items="${pageInfo.navigatepageNums}" var="pageNum">
                        <c:if test="${pageNum == pageInfo.pageNum}">
                                <li class="active page-item"><a class="page-link" href="#">${pageNum}</a></li>
                        </c:if>
                        <c:if test="${!(pageNum == pageInfo.pageNum)}">
                                <li class="page-item"><a class="page-link">${pageNum}</a></li>
                        </c:if>
                </c:forEach>
                <li class="page-item">
                        <a class="page-link" aria-label="Next" >
                                <span>&raquo;</span>
                        </a>
                </li>
        </ul>
        <ul style="margin-right: 10.2%" class="ul_right list-group list-group-horizontal-sm float-right">
                <li class="list-group-item">当前页数${pageInfo.pageNum}</li>
                <li class="list-group-item">总页数${pageInfo.pages}</li>
                <li class="list-group-item">总记录数${pageInfo.total}</li>
        </ul>
</nav>

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
<script src="${pageContext.request.contextPath}/static/BUI/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath}/static/BUI/js/proper.js"></script>
<script src="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/js/bootstrap.js"></script>
</body>
<script>
        //分页
        var previous = document.querySelectorAll("a.page-link");
        var filterForm = document.querySelector("#filterForm");

        previous[0].onclick = function(){
            var pn =${pageInfo.pageNum};
            var isFirst = ${pageInfo.isFirstPage};
            if(isFirst){
                alert("已经是第一页啦~");
            }else{
                filterForm.lastElementChild.previousElementSibling.value = pn -1;
                filterForm.submit();
            }
        }
        previous[previous.length -1].onclick = function(){
            var pn =${pageInfo.pageNum};
            var isLast = ${pageInfo.isLastPage};
            if(isLast){
                alert("已经是最后一页啦~");
            }else{
                filterForm.lastElementChild.previousElementSibling.value = pn +1;
                filterForm.submit();
            }
        }
        //中间按钮
        for (var i = 1; i < previous.length -1; i++) {
            previous[i].index =  i;
            previous[i].onclick=function(){
                var pn =${pageInfo.navigatepageNums[0]};
                filterForm.lastElementChild.previousElementSibling.value = pn + this.index - 1
                filterForm.submit();
            }
        }

        //表单回显
        var selects = document.querySelectorAll("select");
        var hireSalary = ${hireSalary};
        var hireYears=${hireYears};
        var hireEduc = "${hireEducation}";

        for (var i = 0; i < selects.length; i++) {
                var sons = selects[i].children;

                for (var j = 0; j < sons.length; j++) {
                    if(hireSalary ==sons[j].value || hireYears == sons[j].value || hireEduc ==sons[j].value){
                        sons[j].selected ="selected";
                    }

                }
        }
</script>
</html>

