<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title></title>
<link rel="stylesheet" href="css/manage.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/footer.css" type="text/css">
<script src="js/ie-emulation-modes-warning.js"></script>
</head>
<body>
<%
	Object vipuser = session.getAttribute("VIPuser");
	Object adminuser = session.getAttribute("Adminuser");
	Object user1 = session.getAttribute("actualuser");
 %>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#defaultNavbar1">
					<span class="sr-only">Toggle navigation</span><span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="mainframe.jsp"><% out.println(user1);%></a>
				<%-- <span class="text-muted"><% out.println(vipuser+" "+adminuser);%></span> --%>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="defaultNavbar1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="mainframe.jsp">首页<span
							class="sr-only">(current)</span></a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">管理员档案<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="show_admin.jsp">查看管理员</a></li>
							<li><a href="exhibition_admin.jsp">展示管理员</a></li>
							<li><a href="add_admin.jsp">添加管理员</a></li>
							<li><a href="change_admin.jsp">修改管理员</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">岗位管理<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="add_adminjob.jsp">添加岗位</a></li>
							<li><a href="show_adminjob.jsp">查看岗位</a></li>
						</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">用户管理<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="manage_user.jsp">管理用户</a></li>
							<li><a href="show_user.jsp">查看用户</a></li>
						</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-expanded="false">云服务<span
							class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="chartroom/login.jsp">聊天室</a></li>
							<li><a href="index.jsp">论坛</a></li>
							<li><a href="x2_resource.jsp">信2资源站（维护中）</a></li>
						</ul></li>
					<li class="divider"></li>
				</ul>
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="JSPhandle/logout.jsp">登出</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<script src="../js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.js" type="text/javascript"></script>
</body>
</html>