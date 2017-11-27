<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>查看管理员</title>
<link rel="stylesheet" href="css/manage.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/footer.css" type="text/css">
<script src="js/ie-emulation-modes-warning.js"></script>
<style type="text/css">
.main_content {
	text-indent: 2em
}
</style>
</head>

<body>
	<%@ include file="/module/top.jsp"%>
	<div class="container">
		<%
			if (session.getAttribute("actualuser") == null) {
				out.println("<script>alert('登录超时 (1440 秒未活动)或未登录，请重新登录。');window.location.href='index.html';</script>");
				return;
			}
			Object actualuser = session.getAttribute("actualuser");
		%>
		<h1 class="heading_title_text text-center">查看用户</h1>
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title text-center">用户管理</h3>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-hover">
								<tr class="text-center">
									<td>用户名</td>
									<td>邮箱</td>
									<td>是否VIP</td>
									<td>是否管理员</td>
								</tr>
								<%
									String driverClass = "oracle.jdbc.driver.OracleDriver";
									String url = "jdbc:oracle:thin:@localhost:1521:oracle";
									String user = "C##ROOT";
									String password = "root";
									Class.forName(driverClass).newInstance();
									try {
									ResultSet rs = null;
									Connection conn = null;
									PreparedStatement sql = null;
										
										conn = DriverManager.getConnection(url, user, password);
										Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
										sql = conn.prepareStatement(
												"select userName,Email,case when VIP = 1 then '是' else '否' end as VIP,case when Administrator = 1 then '是' else '否' end as Administrator from show_user_view");
										rs = sql.executeQuery();
										while (rs.next()) {
								%>
								<tr class="main_content">
									<td><%=rs.getString("userName")%></td>
									<td><%=rs.getString("Email")%></td>
									<td><%=rs.getString("VIP")%></td>
									<td><%=rs.getString("Administrator")%></td>
								</tr>
								<%
									}
									sql.close();
									rs.close();
									conn.close();
									stmt.close();
									} catch (Exception ex) {
										ex.printStackTrace();
									}
								%>
								<%
									
								%>
							</table>
						</div>
						<div class="admin_btn pull-right"><a href="#">
								<button type="button" class="btn btn-primary">查询</button>
							</a>
							<a href="manage_user.jsp">
								<button type="button" class="btn btn-success">修改</button>
							</a> 
							<a href="delete_user.jsp">
								<button type="button" class="btn btn-danger">删除</button>
							</a> 
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer -->
		<%@ include file="module/footer.jsp"%>
		<!-- //Footer -->
	</div>
	</div>
	<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
