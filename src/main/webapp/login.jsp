<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理系统</title>
<script type="text/javascript" src="js/jquery/2.0.0/jquery.min.js" ></script>
<link rel="stylesheet" href="css/bootstrap/3.3.6/bootstrap.min.css" />
<script type="text/javascript" src="js/bootstrap/3.3.6/bootstrap.min.js" ></script>
<link rel="stylesheet" href="css/login.css" />
<script>
        document.documentElement.style.overflow="hidden";
        function check(){
    		var name = document.getElementById("name").value;
    		var password = document.getElementById("password").value;
    		if(name == ""){
    			alert("账号不能为空");
    			return false;
    		}
    		if(password == ""){
    			alert("密码不能为空");
    			return false
    		}
    		return true;
    	}
</script>
</head>
<body>
	<!--登陆页面-->
		<div id="Login">
    			<h1 style="margin-left: 100px;">学生管理系统</h1>
    			<form action="login" method="post" onsubmit="return check()">
    				<div style="margin: 20px 0;">
    					<input type="text" name="name" placeholder="用户名" class="form-control input-lg" id="name"/>
    				</div>
    				<div style="margin: 20px 0;">
    					<input type="password" name="password" placeholder="密码"  class="form-control input-lg" id="password"/>
    				</div>
    				<div style="margin: 20px 100px;">
    					<button class="btn btn-success btn btn-lg" type="submit" style="margin-right: 30px;">登陆</button>
    					<button class="btn btn-danger btn btn-lg" type="reset">重置</button>
    				</div>
    			</form>
    	</div>
		<div id="Carousel-background" class="carousel slide" data-ride="carousel" data-interval="5000">
			<!--
            	作者：offline
            	时间：2019-09-14
            	描述：轮播图
            -->
    		<div class="carousel-inner" role="listbox">
    			<div class="item active">
    				<img class="LoginImage" src="images/img2.jpg"/>
    			</div>
    			<div class="item">
    				<img class="LoginImage" src="images/img3.jpg" />
    			</div>
    		</div>
    </div>

	<%
		String message = (String) request.getAttribute("message");
		if("error".equals(message)){
	%>
		<script>
			alert("账号不存在，请重新输入!");
		</script>
	<%

		}
	%>

</body>
</html>