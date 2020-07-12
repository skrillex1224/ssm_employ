<%@ page import="com.tjpu.employ.beans.JobSeeker" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/3
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/button/css/ink-style.css">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<style>
        form.mode{
                margin-left: 5%;
                width: 90%;
        }
        input.modes{
                width: 40%;
        }
        input.modes1{
                width: 100%;
        }
        input.modemini{
                width: 30%;
        }
        a.none{
                text-decoration: none;
                color: white;
                font-family: "等线 Light";
                font-size: 14px;
        }
        a.none:hover{
                color: white;
                text-decoration: none;
        }
        .title1{
                font-family: 迷你简硬笔行书;
                font-size: 24px;
                text-align: center;
        }
        .interview{
                margin-top: 10px;
                font-family: "等线 Light";
                font-size: 16px;
        }
</style>
<html>
<head>
        <title>码农招聘平台</title>
</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>
<div class="title1">Hello ${info.seekerName}</div>
<div class="shadow p-3 mb-5 bg-white rounded" style="margin-left:20%;width: 60%;">

        <form action="<%=request.getContextPath()%>/updatePersonalInfos" method="post" enctype="multipart/form-data" class="mode">

                <input type="hidden" name="seekerId" value="${info.seekerId}" disabled="disabled" />
                <div class="form-row">
                        <div class="form-group col-md-2">
                                <label for="inputAddress">SeekerName</label>
                                <input type="text" name="seekerName" value="${info.seekerName}" class="form-control modes1" id="inputAddress" disabled="disabled"/>
                        </div>
                        <div class="form-group col-md-2">
                                <label for="inputAddress">&nbsp;</label>
                                <input id="edit" type="button" value="编辑信息" class="form-control btn btn-primary">
                        </div>
                        <%--                                <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">--%>
                </div>
                <!--<div class="form-check">
                                <input class="form-check-input" type="radio" name="seekerGender" id="exampleRadios1" checked="${info.seekerGender == 1}"  value="1"  disabled="disabled"/>
                                <label class="form-check-label" for="exampleRadios1">
                                        Boys
                                </label>
<%--                                seekerGender :<input type="radio" class="radioGroup" checked="${info.seekerGender == 1}" name="seekerGender" value="1"  disabled="disabled"/>男--%>
<%--                                <input type="radio" class="radioGroup" checked="${info.seekerGender == 0}" name="seekerGender" value="0"  disabled="disabled"/>女--%>
                        </div>
                        <div class="form-check">
                                <input class="form-check-input"  type="radio" name="seekerGender" id="exampleRadios2" checked="${info.seekerGender == 0}"  value="0"  disabled="disabled"/>
                                <label class="form-check-label" for="exampleRadios2">
                                        Girls
                                </label>
                        </div>-->
                <div class="form-group">
                        <label for="inputAddress2">SeekerEduc</label>
                        <input type="text" class="form-control modes" id="inputAddress2"name="seekerEduc" value="${info.seekerEduc}"  disabled="disabled">
                        <%--                                seekerEduc<input type="text" name="seekerEduc" value="${info.seekerEduc}"  disabled="disabled"/>--%>
                </div>
                <div class="form-row">
                        <div class="form-group col-md-3">
                                <label for="inputAge">SeekerAge</label>
                                <input type="text"  id="inputAge" name="seekerAge" value="${info.seekerAge}" class="form-control"  disabled="disabled"/>
                                <%--                                seekerAge<input type="text" name="seekerAge" value="${info.seekerAge}"  disabled="disabled"/>--%>
                        </div>
                        <div class="form-group col-md-3">
                                <label for="inputLanguage">SeekerLanguage</label>
                                <input type="text" class="form-control " id="inputLanguage" name="seekerLanguage" value="${info.seekerLanguage}"  disabled="disabled">
                                <%--                                seekerLanguage<input type="text" name="seekerLanguage" value="${info.seekerLanguage}"  disabled="disabled"/>--%>
                        </div>
                        <div class="form-group col-md-3">
                                <label for="inputLanguage">SeekerYears</label>
                                <input type="text" class="form-control " id="inputYears" name="seekerYears" value="${info.seekerYears}"  disabled="disabled">
                                <%--                                Years--%>
                        </div>
                </div>

                <div class="form-row">
                        <div class="form-group col-md-6">
                                <label for="inputEmail4">Email</label>
                                <input type="text" id="inputEmail4" name="seekerEmail" value="${info.seekerEmail}" class="form-control " disabled="disabled"/>
                                <%--                                        <input type="email" class="form-control" id="inputEmail4">--%>
                        </div>
                        <div class="form-group col-md-6">
                                <label for="inputPassword4">Password</label>
                                <input type="password" id="inputPassword4" name="seekerPassword" value="${info.seekerPassword}" class="form-control " disabled="disabled"/>
                                <%--                                        <input type="password" class="form-control" id="inputPassword4">--%>
                        </div>
                </div>
                <div class="form-row">
                        <div class="form-group col-md-6">
                                <label style="display: none">SeekerResume:</label>
                                <input style="display: none" class="toggleResume"  type="file" name="resume" value="${info.seekerResume}"  disabled="disabled"/>
                        </div>
                        <div class="form-group col-md-6">
                                <label for="confirm" style="display: none;">confirmPassword</label>
                                <input type="password" id="confirm" name="confirmPassword" style="display: none"  class="form-control " disabled="disabled"/>
                        </div>
                </div>
                <div class="form-row">
                        <div class="form-group col-md-6">
                                <input style="display: none" class="toggleResume"  type="file" name="resume" value="${info.seekerResume}"  disabled="disabled"/>
                        </div>
                        <div class="form-group col-md-6">
                                <input type="submit" value="保存" style="display: none" class="btn btn-primary">
                        </div>
                </div>

                <%--                    <input type="password" id="hidden" style="display: none"  disabled="disabled"/>--%>


                <svg width="0" height="0">
                        <filter id="filter">
                                <feTurbulence type="fractalNoise" baseFrequency=".01" numOctaves="6" />
                                <feDisplacementMap in="SourceGraphic" scale="100" />
                        </filter>
                </svg>

                <div class="button _1">
                        <span><a class="toggleResume none" href="<%=request.getContextPath()%>/static/resumes/resume_${info.seekerId}.docx"  >下载并查看我的简历</a> </span>
                        <div class="back"></div>
                </div>
                <%--                      <label style="display: none">seekerResume</label>--%>
                <%--                        <input style="display: none" class="toggleResume"  type="file" name="resume" value="${info.seekerResume}"  disabled="disabled"/>--%>


                <!--面试进度详情-->
                <div class="interview">
                        <c:forEach items="${info.seekHireInfos}" var="tmp" varStatus="status">
                                <c:choose>
                                        <c:when test="${tmp != null && info.hireInfos.size() > 0}">
                                                <table class="table table-hover">
                                                        <tr>
                                                                <td><em>面试公司:</em></td>
                                                                <td>${info.hireInfos.get(status.index).enterprise.enterName}</td>
                                                        </tr>
                                                        <tr>
                                                                <td>面试进度:</td>
                                                                <td>${tmp.processStatus}</td>
                                                        </tr>
                                                        <tr>
                                                                <td>预约面试时间:</td>
                                                                <td>

                                                                        <c:if test="${tmp.orderInterviewTime == '' } ">
                                                                                <fmt:formatDate value="${tmp.orderInterviewTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate>
                                                                        </c:if>
                                                                        <c:if test="${tmp.orderInterviewTime != '' }">
                                                                                暂无面试
                                                                        </c:if>
                                                                </td>
                                                        </tr>
                                                        <tr>
                                                                <td>面试结果:</td>
                                                                <td>${tmp.interviewResult}</td>
                                                        </tr>
                                                </table>
                                        </c:when>
                                        <c:otherwise>
                                                您目前没有参加任何面试哦
                                        </c:otherwise>
                                </c:choose>

                        </c:forEach>
                </div>



        </form>

</div>

</body>
<script>
        var edit = document.querySelector("#edit");
        var pwds = document.querySelectorAll("[type=\"password\"]");
        var submit =document.querySelector("[type=\"submit\"]");
        var inputs = document.querySelectorAll("input");
        var resumes = document.querySelectorAll(".toggleResume");
        var labels = document.querySelectorAll("label");
        edit.onclick=function () {
                pwds[1].style.display="inline-block";
                submit.style.display="inline-block";
                resumes[1].style.display ="inline-block";
                resumes[0].style.display ="none";
                for (var i=0; i< inputs.length;i++){
                        inputs[i].disabled = "";
                }

                for (var i = 0; i < labels.length; i++) {
                        labels[i].style.display="inline-block";
                }
        }

        submit.onclick=function () {
                if(pwds[0].value == pwds[1].value ){
                        return true;
                }else{
                        alert("两次密码输入的不一致");
                        return false;
                }
        }

</script>
</html>
