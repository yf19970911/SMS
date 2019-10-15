<%@ page import="cn.yf.pojo.Page" %><%--
  Created by IntelliJ IDEA.
  User: 杨帆
  Date: 2019/9/25
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="fmt"%>
<html>
<head>
    <title>学生管理系统</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/showStudent.css">
</head>
<body>
    <%--Top--%>
    <jsp:include page="top.jsp"></jsp:include>
    <div class="container" id="content">
        <div class="row">
            <%--导航栏--%>
            <jsp:include page="menu.jsp"></jsp:include>
            <div id="content_right" class="col-md-10">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <h1 class="col-md-4" style="margin-top: 13px">学生信息管理</h1>
                            <form class="col-md-6" action="${pageContext.request.contextPath}/student/queryById" method="post">
                                    <input type="text" name="idOrName" class="form-control" style="width:200px; float: left;margin-top: 15px;" placeholder="请输入ID">
                                    <button class="btn btn-primary" style="float: right;margin-top: 15px;margin-right: 200px" type="submit">搜索</button>
                            </form>
                            <button class="btn btn-primary col-md-2" style="width: 100px;margin-top: 15px;margin-left: 10px" onClick="location.href='${pageContext.request.contextPath}/jsp/addStudent.jsp'">添加学生</button>
                        </div>
                    </div>
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <td>ID</td>
                            <td>姓名</td>
                            <td>性别</td>
                            <td>出生日期</td>
                            <td>入学日期</td>
                            <td>专业</td>
                            <td>学院</td>
                            <td>操作</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${page.students}" var="student">
                            <tr>
                                <td>${student.id}</td>
                                <td>${student.name}</td>
                                <td>${student.sex}</td>
                                <td>${student.birth}</td>
                                <td>${student.schoolday}</td>
                                <td>${student.marjor_id}</td>
                                <td>${student.college_id}</td>
                                <td>
                                    <button class="btn btn-primary" onClick="location.href='${pageContext.request.contextPath}/jsp/updateStudent.jsp?id=${student.id}'">修改</button>
                                    <button class="btn btn-danger" onClick="location.href='${pageContext.request.contextPath}/student/delete?id=${student.id}'">删除</button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <%--分页--%>
                    <div class="panel-footer">
                        <nav style="text-align: center">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath}/student/queryByPage?currentPage=1">首页</a></li>
                                <li><a href="${pageContext.request.contextPath}/student/queryByPage?currentPage=${page.currentPage-1}">上一页</a></li>
                                <li><a href="${pageContext.request.contextPath}/student/queryByPage?currentPage=${page.currentPage+1}">下一页</a></li>
                                <li><a href="${pageContext.request.contextPath}/student/queryByPage?currentPage=${page.totalPage}">尾页</a></li>
                            </ul>

                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
