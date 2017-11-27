<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>test</title>
<script src="js/ie-emulation-modes-warning.js"></script>
<link href="css/zzsc.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
<script src="js/jquery-1.3.2.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$(".subNav").click(function() {
			$(this).toggleClass("currentDd").siblings(".subNav").removeClass("currentDd")
			$(this).toggleClass("currentDt").siblings(".subNav").removeClass("currentDt")

			// 修改数字控制速度， slideUp(500)控制卷起速度
			$(this).next(".navContent").slideToggle(500).siblings(".navContent").slideUp(500);
		})
	})
</script>
<style type="text/css">
.placeholders {
	margin-bottom: 20px;
	text-align: center;
	margin-left: 15px;
}

.placeholders h4 {
	margin-bottom: 0;
}

.placeholder h4 {
	/* padding-left:20px; */
	
}

.placeholder img {
	display: inline-block;
	border-radius: 50%;
}
</style>
</head>
<body>
	<div class="col-lg-2 col-md-2 hidden-xs">
		<div class="row placeholders">
			<div class="placeholder">
				<img src="img/client1.jpg" width="100" height="100"
					class="img-responsive" alt="用户头像">
				<h4>
					<%
						out.println(user1);
					%>
				</h4>
				<!-- 已在top.jsp中声明，此处报错正常 -->
				<span class="text-muted"> <%
 	out.println(vipuser + " " + adminuser);
 %>
				</span>
				<!-- 已在top.jsp中声明，此处报错正常 -->
			</div>
		</div>
		<div class="subNavBox">
			<div class="subNav currentDd currentDt"><h4>管理员档案</h4></div>
			<ul class="nav nav-sidebar text-center navContent "
				style="display:block">
				<li class="active"><a href="add_admin.jsp">添加管理员<span
						class="sr-only">(current)</span></a></li>
				<li class="active"><a href="add_docFile.jsp">添加档案<span
						class="sr-only">(current)</span></a></li>
				<li><a href="show_admin.jsp">查看管理员</a></li>
				<li><a href="exhibition_admin.jsp">展示管理员</a></li>
				<li><a href="change_admin.jsp">修改管理员</a></li>
			</ul>
			<div class="subNav"><h4>岗位管理</h4></div>
			<ul class="nav nav-sidebar text-center navContent">
				<li><a href="add_adminjob.jsp">添加岗位</a></li>
				<li><a href="show_adminjob.jsp">查看岗位</a></li>
			</ul>
			<div class="subNav"><h4>用户管理</h4></div>
			<ul class="nav nav-sidebar text-center navContent">
				<li><a href="manage_user.jsp">管理用户</a></li>
				<li><a href="show_user.jsp">查看用户</a></li>
			</ul>
			<div class="subNav"><h4>云服务</h4></div>
			<ul class="nav nav-sidebar text-center navContent">
				<li><a href="chartroom/login.jsp">聊天室</a></li>
				<li><a href="index.jsp">论坛</a></li>
				<li><a href="x2_resource.jsp">信2资源站（维护中）</a></li>
			</ul>
			<div class="subNav"><h4>团队中心</h4></div>
			<ul class="nav nav-sidebar text-center navContent">
				<li><a href="add_docFile.jsp">添加个人档案</a></li>
				<li><a href="show_docFile.jsp">查看个人档案</a></li>
				<li><a href="manage_docFile.jsp">编辑个人档案</a></li>
				<li><a href="issue_page.jsp">发布信息</a></li>
			</ul>
		</div>
	</div>
	<script src="../js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.js" type="text/javascript"></script>
</body>
</html>