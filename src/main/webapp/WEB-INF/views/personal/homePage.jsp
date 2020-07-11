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
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<html>
<head>
        <title>码农招聘平台</title>
</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>
        <h1>Home Page</h1>
        <div>

                <form action="<%=request.getContextPath()%>/updatePersonalInfos" method="post" enctype="multipart/form-data">
                        <input id="edit" type="button" value="编辑">
                        <input type="hidden" name="seekerId" value="${info.seekerId}" disabled="disabled" />
                        seekerName<input type="text" name="seekerName" value="${info.seekerName}"  disabled="disabled"/>
                        seekerEmail<input type="text" name="seekerEmail" value="${info.seekerEmail}"  disabled="disabled"/>
                        seekerEduc<input type="text" name="seekerEduc" value="${info.seekerEduc}"  disabled="disabled"/>
                        seekerAge<input type="text" name="seekerAge" value="${info.seekerAge}"  disabled="disabled"/>
                        seekerGender :<input type="radio" class="radioGroup" checked="${info.seekerGender == 1}" name="seekerGender" value="1"  disabled="disabled"/>男
                                         <input type="radio" class="radioGroup" checked="${info.seekerGender == 0}" name="seekerGender" value="0"  disabled="disabled"/>女
                        seekerLanguage<input type="text" name="seekerLanguage" value="${info.seekerLanguage}"  disabled="disabled"/>
                        seekerYears<input type="text" name="seekerYears" value="${info.seekerYears}"  disabled="disabled"/>
                        seekerPassword<input type="password" name="seekerPassword" value="${info.seekerPassword}"  disabled="disabled"/>

                        <label  style="display: none">confirmPassword</label> <input type="password" id="hidden" style="display: none"  disabled="disabled"/>

                        <a class="toggleResume" href="<%=request.getContextPath()%>/static/resumes/resume_${info.seekerId}.docx">下载并查看我的简历</a>

                        <label style="display: none">seekerResume</label><input style="display: none" class="toggleResume"  type="file" name="resume" value="${info.seekerResume}"  disabled="disabled"/>

                        <input type="submit" value="submit" style="display: none">

                        <br><br>
                                       <c:forEach items="${info.seekHireInfos}" var="tmp" varStatus="status">
                                               <c:choose>
                                                       <c:when test="${tmp != null && info.hireInfos.size() > 0}">
                                                               面试公司:${info.hireInfos.get(status.index).enterprise.enterName}<br>
                                                               面试进度:${tmp.processStatus}<br>
                                                               预约面试时间:<fmt:formatDate value="${tmp.orderInterviewTime}" pattern="yyyy-MM-dd HH:mm:ss"></fmt:formatDate> <br>
                                                               面试结果:${tmp.interviewResult} <br>
                                                               <br><br>
                                                       </c:when>
                                                       <c:otherwise>
                                                               您目前没有参加任何面试哦
                                                       </c:otherwise>
                                               </c:choose>

                                       </c:forEach>

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
