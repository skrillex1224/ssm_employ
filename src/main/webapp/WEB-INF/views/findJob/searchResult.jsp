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
        <title>Title</title>
</head>
<body>
<jsp:include page="../headerPage/publicPage.jsp"></jsp:include>

        ${search.iterator().next()}

<%--        <c:forEach items="${search.}" var="ret">--%>
<%--                ${re}--%>

<%--        </c:forEach>--%>
</body>
</html>
