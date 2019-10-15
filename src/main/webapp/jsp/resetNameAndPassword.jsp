<%--
  Created by IntelliJ IDEA.
  User: 杨帆
  Date: 2019/9/25
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>学生管理系统</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/2.0.0/jquery.min.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/3.3.6/bootstrap.min.css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/3.3.6/bootstrap.min.js" ></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/showStudent.css">
</head>
<script>
    function check(){
        var name = document.getElementById("name").value;
        var password = document.getElementById("password").value;
        if(name==""){
            alert("账号不能为空！");
            return false;
        }
        if(password==""){
            alert("密码不能为空！");
            return false;
        }
        return true;
    }
</script>
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
                        <h1 style="text-align: center">修改账户信息</h1>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/admin/reset?id=${sessionScope.admin.id}" method="post" onsubmit="return check()">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">ID</label>
                            <div class="col-sm-10">
                                <input class="form-control" placeholder="${sessionScope.admin.id}" type="text" name="id" id="id" disabled="disabled" value="${sessionScope.admin.id}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input class="form-control" placeholder="请输入账号" type="text" name="name" id="name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input class="form-control" placeholder="请输入密码" type="password" name="password" id="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <div><button class="btn btn-danger btn" style="width: 100px;float: left;margin-left: 20%;margin-top: 2%" onClick="location.href='${pageContext.request.contextPath}/student/queryByPage'" type="button">退出</button></div>
                            <div><button class="btn btn-primary btn" style="width: 100px;float: right;margin-right: 20%;margin-top:2%"type="submit">提交</button></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
