<%@ page import="java.util.List" %>
<%@ page import="com.tjpu.employ.beans.Enterprise" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 57229
  Date: 2020/7/3
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
        <title>码农招聘平台</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/static/UI/css/layui.css ">
        <script type="text/javascript" src="${pageContext.request.contextPath}/static/UI/layui.js"></script>
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<body>
        <jsp:include page="../headerPage/publicPage.jsp"></jsp:include>
        <div class="layui-container">
                <table class="layui-table" lay-skin="nob">
                        <thead>
                                <tr>
                                        <th colspan="10">公司概览</th>
                                </tr>

                        </thead>
                        <tr>
                                <td style="font-weight: bolder">公司地点</td>
                                <td><a href="searchEnterpriseByLocation?location=北京市" class="selected">北京</a></td>
                                <td><a href="searchEnterpriseByLocation?location=上海市">上海</a></td>
                                <td><a href="searchEnterpriseByLocation?location=杭州市">杭州</a></td>
                                <td><a href="searchEnterpriseByLocation?location=大连市">大连</a></td>
                                <td><a href="searchEnterpriseByLocation?location=天津市">天津</a></td>
                                <td><a href="searchEnterpriseByLocation?location=武汉市">武汉</a></td>
                                <td><a href="searchEnterpriseByLocation?location=西安市">西安</a></td>
                                <td><a href="searchEnterpriseByLocation?location=厦门市">厦门</a></td>
                                <td><a href="searchEnterpriseByLocation?location=苏州市">苏州</a></td>
                        </tr>

                        <tr>
                                <td style="font-weight: bolder">行业类型</td>
                                <td><a href="searchAllEnterprises">不限</a></td>
                                <td><a href="searchEnterpriseByType?type=IT">IT</a></td>
                                <td><a href="searchEnterpriseByType?type=电子商务">电子商务</a></td>
                                <td><a href="searchEnterpriseByType?type=游戏">游戏</a></td>
                                <td><a href="searchEnterpriseByType?type=保险">保险</a></td>
                                <td><a href="#">广告营销</a></td>
                                <td><a href="searchEnterpriseByType?type=网络安全">网络安全</a></td>
                                <td><a href="#">旅游</a></td>
                                <td><a href="#">商业</a></td>

                        </tr>

                        <tr aria-rowspan="2">
                                <td><a href="#"></a></td>
                                <td><a href="#">移动互联网</a></td>
                                <td><a href="#">信息安全</a></td>
                                <td><a href="#">智能硬件</a></td>
                                <td><a href="#">大数据</a></td>
                                <td><a href="#">人工智能</a></td>
                                <td><a href="#">汽车服务</a></td>
                                <td><a href="#">前端服务</a></td>
                                <td><a href="#">通信网络设备</a></td>
                                <td><a href="#">互联网金融</a></td>
                        </tr>
                </table>



                <%
                        List<Enterprise> list = (List<Enterprise>) request.getAttribute("enterprise");
                        int k = 0;
                %>

                <div style="margin-bottom: 20px;margin-top: 20px">
                        <span style="color: #48C2B3;">根据求职期望        </span><span>推荐</span>
                        <span style="float: right">共<%=list.size()%>+公司</span>
                </div>

                <%
                        for (int i = 0; i <= list.size()/4; i++) {
                %>

                <div class="layui-row layui-col-space10" id="table1">
                        <%
                                for (int j = 0; j < 4 && k < list.size(); j++) {
                        %>
                                <div class="layui-col-md3" style="height: 177px">
                                    <span style="width: 50px;float: left">
                                            <img src="${pageContext.request.contextPath}/static/imgs/img_<%=list.get(k).getEnterId()%>.jpg" width="80px" height="80px" style="margin-top: 30px;margin-left: 30px;border-radius: 9px;-webkit-border-radius: 9px;-moz-border-radius: 9px;">
                                    </span>
                                    <span style="float: right;padding-top: 30px;padding-right: 30px">
                                            <a href="searchHireInfoByEnterName?enterName=<%=list.get(k).getEnterName()%>" style="color: #1b1e21;font-family: 楷体;font-weight: bolder;font-size: large"><%=list.get(k).getEnterName()%></a>
                                            <br><br>
                                            <span><%=list.get(k).getEnterLocation()%> | <%=list.get(k++).getEnterType()%></span>
                                    </span>


                                </div>
                        <%
                                }
                        %>
                        <%
                        }
                        %>

                </div>

        </div>

        <script type="text/javascript">

        </script>



</body>
</html>
