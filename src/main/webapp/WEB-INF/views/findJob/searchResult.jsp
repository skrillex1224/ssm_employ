<%@ page import="com.tjpu.employ.elasticsearch.bean.Search" %>
<%@ page import="org.springframework.data.domain.Page" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/10
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
        <title>码农招聘平台</title>
        <link href="${pageContext.request.contextPath}/static/BUI/bootstrap4.5/css/bootstrap.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/font-awesome.min.css">
        <style>
                * {
                        box-sizing: border-box;
                }

                td > a {
                        text-decoration: none;
                        font-weight: bolder;font-family: 'kaiTi';
                        cursor: pointer;
                        font-size: 24px;
                        color: black;
                }

                td > a:hover{
                        text-decoration: none;
                        color: dimgrey;
                }

                body {
                        margin: 0;
                }

                div.search {
                        padding: 30px 0
                }

                /*修改*/
                #search_form {
                        position: relative;
                        width: 60%;
                        margin: 0 auto;

                }

                .d1 {
                        background: #a3d0c3;
                }

                .d1 input {
                        transition: 400ms;
                        width: 100%;
                        height: 42px;
                        padding-left: 10px;
                        border: 2px solid dimgray;
                        border-radius: 5px;
                        outline: none;
                        background: whitesmoke;
                        color: black;
                }

                .d1:hover input {
                        border: 2px solid slategrey;
                }

                .d1 button {
                        transition: 400ms;
                        position: absolute;
                        top: 0;
                        right: 0px;
                        width: 42px;
                        height: 42px;
                        border: none;
                        background: dimgray;
                        border-radius: 0 5px 5px 0;
                        cursor: pointer;
                }

                .d1:hover button {
                        background: slategrey;
                }


                .d1 button:before {
                        content: "\f002";
                        font-family: FontAwesome;
                        font-size: 16px;
                        color: #F9F0DA;
                }
        </style>
</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>

<div class="search d1" style="background-color:white">
        <form id="search_form" action="${pageContext.request.contextPath}/elasticsearch">

                <input type="text" name="searchParam" id="exampleInputAmount" placeholder="在这里进行搜索~">
                <button type="submit"></button>
        </form>
</div>
<p style="margin-left: 10%;font-weight: bold;font-size: 20px;font-family: 'kaiti'">
        根据相关性排序，得到以下结果：(共${search.totalPages}页，共${search.totalElements}条相关数据)
</p>
<table class="table table-hover" style="width: 80%;margin-left: 10%;font-weight: bolder;font-family: 'kaiTi'">
        <c:forEach items="${search.content}" var="content">
                <tr >
                        <td colspan="3" rowspan="3">
                                <img src="${pageContext.request.contextPath}/static/imgs/img_${content.enterId}.jpg"
                                style="width: 120px;height: 100px;margin-right: -20px;">
                        </td>
                        <td   class="table-secondary"  colspan="3">
                                <a href="${pageContext.request.contextPath}/searchHireInfoByEnterName?enterName=${content.enterName}">
                                        公司：${content.enterName}
                                </a>
                        </td>
                        <td colspan="3" class="table-secondary">
                                <a href="${pageContext.request.contextPath}/seeParticularInfo?hireId=${content.hireId}">

                                        招聘岗位：${content.hireOccupation}
                                </a></td>
                </tr>
                <tr>

                        <td>公司邮箱：${content.enterEmail}</td>
                        <td>公司法人：${content.enterUsername}</td>
                        <td>公司类型：${content.enterType}</td>
                        <td>学历要求：${content.hireEducation}</td>
                        <td>语言：${content.hireLanguage}</td>
                </tr>
                <tr>
                        <td>公司电话：${content.enterPhone}</td>
                        <td>公司信息：${content.enterInfo}</td>
                        <td>公司地点：${content.enterLocation}</td>
                        <td>薪水：${content.hireSalary}元/月</td>
                        <td>工作经验：${content.hireYears}年</td>
                </tr>
        </c:forEach>
</table>

<ul class="pagination pagination-lg" style="margin-left: 18%">

                 <c:choose>
                         <c:when test="${search.first}">
                                 <li class="page-item active"><a class="page-link" href="#">第一页</a></li>
                         </c:when>
                         <c:otherwise>
                                 <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/elasticsearch?pn=1&searchParam=${searchParam}">第一页</a></li>
                         </c:otherwise>
                 </c:choose>

                <c:choose>
                        <c:when test="${search.hasPrevious()}">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/elasticsearch?pn=${search.previousPageable().pageNumber +1}&searchParam=${searchParam}">上一页</a></li>
                        </c:when>
                        <c:otherwise>
                                <li class="page-item "><a class="page-link" href="#" >上一页</a></li>
                        </c:otherwise>
                </c:choose>

                <c:choose>
                        <c:when test="${search.number +8 >= search.totalPages}">
                                <c:forEach begin="${search.totalPages -8}" end="${search.totalPages }" step="1" varStatus="status">
                                        <c:if test="${status.index == search.number +1}">
                                                <li class="page-item active"><a class="page-link"  href="#">${status.index}</a></li>
                                        </c:if>
                                        <c:if test="${status.index  != search.number +1}">
                                        <li class="page-item "><a class="page-link"
                                           href="<%=request.getContextPath()%>/elasticsearch?pn=${status.index}&searchParam=${searchParam}">${status.index}</a></li>
                                        </c:if>
                                </c:forEach>
                        </c:when>
                        <c:otherwise>
                                <c:forEach begin="${search.number +1}" end="${search.number + 9}" step="1" varStatus="status">
                                        <c:if test="${search.number +1 == status.index}">
                                                <li class="page-item active "><a class="page-link"  href="#">${status.index}</a></li>
                                        </c:if>
                                        <c:if test="${search.number +1 != status.index}">
                                                <li class="page-item "><a class="page-link"
                                                href="<%=request.getContextPath()%>/elasticsearch?pn=${status.index}&searchParam=${searchParam}">${status.index}</a></li>
                                        </c:if>
                                </c:forEach>
                        </c:otherwise>

                </c:choose>


                <c:choose>
                        <c:when test="${search.hasNext()}">
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/elasticsearch?pn=${search.nextPageable().pageNumber +1}&searchParam=${searchParam}">下一页</a></li>
                        </c:when>
                        <c:otherwise>
                                <li class="page-item "><a class="page-link" href="#" >下一页</a></li>
                        </c:otherwise>
                </c:choose>


                <c:choose>
                        <c:when test="${search.last}">
                                <li class="page-item active"><a class="page-link" href="#">最后一页</a></li>
                        </c:when>
                        <c:otherwise>
                                <li class="page-item"><a class="page-link" href="${pageContext.request.contextPath}/elasticsearch?pn=${search.totalPages}&searchParam=${searchParam}">最后一页</a></li>
                        </c:otherwise>
                </c:choose>


</ul>




</body>
</html>
