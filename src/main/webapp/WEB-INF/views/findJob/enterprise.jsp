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
        <style>
                a.ashow{
                        font-family: "等线 Light";
                        font-size: 16px;
                        text-decoration:none;!important;
                }
                a.ashow:hover{text-decoration:none;color: cornflowerblue;!important;}
        </style>
</head>
<body>
        <jsp:include page="../headerPage/publicPage.jsp"></jsp:include>
        <div class="layui-container">
                <table class="layui-table" lay-skin="nob">
                        <thead>
                                <tr>
                                        <th colspan="10" style="font-size: 20px;">公司概览</th>
                                </tr>

                        </thead>
                        <tr>
                                <td style="font-weight: bolder;">公司地点</td>
                                <td><a href="searchEnterpriseByLocation?location=北京市" class="ashow">北京</a></td>
                                <td><a href="searchEnterpriseByLocation?location=上海市" class="ashow">上海</a></td>
                                <td><a href="searchEnterpriseByLocation?location=杭州市" class="ashow">杭州</a></td>
                                <td><a href="searchEnterpriseByLocation?location=大连市" class="ashow">大连</a></td>
                                <td><a href="searchEnterpriseByLocation?location=天津市" class="ashow">天津</a></td>
                                <td><a href="searchEnterpriseByLocation?location=武汉市" class="ashow">武汉</a></td>
                                <td><a href="searchEnterpriseByLocation?location=西安市" class="ashow">西安</a></td>
                                <td><a href="searchEnterpriseByLocation?location=厦门市" class="ashow">厦门</a></td>
                                <td><a href="searchEnterpriseByLocation?location=苏州市" class="ashow">苏州</a></td>
                        </tr>

                        <tr>
                                <td style="font-weight: bolder">行业类型</td>
                                <td><a href="searchAllEnterprises" class="ashow">不限</a></td>
                                <td><a href="searchEnterpriseByType?type=IT" class="ashow">IT</a></td>
                                <td><a href="searchEnterpriseByType?type=电子商务" class="ashow">电子商务</a></td>
                                <td><a href="searchEnterpriseByType?type=游戏" class="ashow">游戏</a></td>
                                <td><a href="searchEnterpriseByType?type=保险" class="ashow">保险</a></td>
                                <td><a href="#" class="ashow">广告营销</a></td>
                                <td><a href="searchEnterpriseByType?type=网络安全" class="ashow">网络安全</a></td>
                                <td><a href="#" class="ashow">旅游</a></td>
                                <td><a href="#" class="ashow">商业</a></td>

                        </tr>

                        <tr aria-rowspan="2" class="ashow">
                                <td><a href="#" class="ashow"></a></td>
                                <td><a href="#" class="ashow">移动互联网</a></td>
                                <td><a href="#" class="ashow">信息安全</a></td>
                                <td><a href="#" class="ashow">智能硬件</a></td>
                                <td><a href="#" class="ashow">大数据</a></td>
                                <td><a href="#" class="ashow">人工智能</a></td>
                                <td><a href="#" class="ashow">汽车服务</a></td>
                                <td><a href="#" class="ashow">前端服务</a></td>
                                <td><a href="#" class="ashow">通信网络设备</a></td>
                                <td><a href="#" class="ashow">互联网金融</a></td>
                        </tr>
                </table>



                <%
                        List<Enterprise> list = (List<Enterprise>) request.getAttribute("enterprise");
                        int k = 0;
                %>

                <div style="margin-bottom: 20px;margin-top: 20px">
                        <span style="color: #48C2B3;font-family: '等线 Light';font-size: 16px;">根据求职期望 推荐</span>
                        <span style="float: right;font-family: '等线 Light';font-size: 16px;">共<%=list.size()%>+公司</span>
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
                                            <span style="font-family: '等线 Light';font-size: 16px;"><%=list.get(k).getEnterLocation()%> | <%=list.get(k++).getEnterType()%></span>
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
