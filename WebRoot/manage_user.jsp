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
<title>学生管理</title>
<link rel="stylesheet" href="css/manage.css" type="text/css">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/footer.css" type="text/css">
<script src="js/ie-emulation-modes-warning.js"></script>
</head>
<body>
	<%@ include file="/module/top.jsp"%>
	<%@ include file="/module/limits_check.jsp"%>
	<div class="container">
		<%
			if (session.getAttribute("actualuser") == null) {
				out.println("<script>alert('登录超时 (1440 秒未活动)或未登录，请重新登录。');window.location.href='index.html';</script>");
				return;
			}
			Object actualuser = session.getAttribute("actualuser");
		%>
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<h3 class="text-center">修改用户</h3>
			<div class="col-sm-12 col-lg-9 col-md-9">
				<form class="form-horizontal" role="form" id="edit_admin"
					name="edit_user.jsp" action="edit_user.jsp" method="post">
					<div class="form-group">
						<label for="inputText1" class="col-sm-2 control-label">要修改的用户名</label>
						<div class="col-sm-10">
							<select name="userName" class="form-control" name="userName">
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
										sql = conn.prepareStatement("select * from show_user_view");
										rs = sql.executeQuery();
										while (rs.next()) {
								%>
								<option value="<%=rs.getString("userName")%>"><%=rs.getString("userName")%></option>
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
							</select>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-primary pull-right">选择</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- Footer -->
		<%@ include file="module/footer.jsp"%>
		<!-- //Footer -->
	</div>
	<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>