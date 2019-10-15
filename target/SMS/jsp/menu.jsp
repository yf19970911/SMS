<%--
  Created by IntelliJ IDEA.
  User: 杨帆
  Date: 2019/9/25
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<div id="menu" class="col-md-2">
    <ul class="nav nav-pills nav-stacked" id="nav">
        <li><a href="${pageContext.request.contextPath}/student/queryByPage">学生管理</a></li>
        <li><a href="${pageContext.request.contextPath}/jsp/resetNameAndPassword.jsp">账号密码重置</a></li>
        <li><a href="../login.jsp">退出系统</a></li>
    </ul>
</div>
