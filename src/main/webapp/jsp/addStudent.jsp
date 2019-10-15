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
        var id = document.getElementById("id").value;
        var name = document.getElementById("name").value;
        var sex = document.getElementById("sex").value;
        var birth = document.getElementById("birth").value;
        var schoolday = document.getElementById("schoolday").value;
        var marjor_id = document.getElementById("marjor_id").value;
        var college_id = document.getElementById("college_id").value;
        if(id==""){
            alert("ID不能为空！");
            return false;
        }
        if(name==""){
            alert("姓名不能为空！");
            return false;
        }
        if(sex==""){
            alert("性别不能为空！");
            return false;
        }
        if(birth==""){
            alert("出生日期不能为空！");
            return false;
        }
        if(schoolday==""){
            alert("入学日期不能为空！");
            return false;
        }if(marjor_id==""){
            alert("专业不能为空！");
            return false;
        }if(college_id==""){
            alert("学院不能为空！");
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
                        <h1 style="text-align: center">添加学生信息</h1>
                    </div>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/student/add" method="post" onsubmit="return check()">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">ID</label>
                            <div class="col-sm-10">
                                <input class="form-control" placeholder="请输入ID" type="text" name="id" id="id">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input class="form-control" placeholder="请输入姓名" type="text" name="name" id="name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">性别</label>
                            <div class="col-sm-10">
                                <label class="checkbox-inline">
                                    <input type="radio" name="sex" value="1" checked id="sex">男
                                </label>
                                <label class="checkbox-inline">
                                    <input type="radio" name="sex" value="0" id="sex">女
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">出生日期</label>
                            <div class="col-sm-10">
                                <input type="date" value="1997-09-11" name="birth" id="birth"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">入学日期</label>
                            <div class="col-sm-10">
                                <input type="date" value="2016-09-01" name="schoolday" id="schoolday"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">专业</label>
                            <div class="col-sm-10">
                                <input class="form-control" placeholder="请输入专业" type="text" name="marjor_id" id="marjor_id">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">学院</label>
                            <div class="col-sm-10">
                                <input class="form-control" placeholder="请输入学院" type="text" name="college_id" id="college_id">
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
