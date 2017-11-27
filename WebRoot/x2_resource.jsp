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
<title>15信管2班资源站</title>
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
			String counter = null;
			if (session.getAttribute("actualuser") == null) {
				out.println("<script>alert('登录超时 (1440 秒未活动)或未登录，请重新登录。');window.location.href='index.html';</script>");
				return;
			}
			Object actualuser = session.getAttribute("actualuser");
		%>
		<h1 class="heading_title_text text-center">15信管2班资源站</h1>
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title text-center">资源列表</h3>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-hover">
								<tr class="text-center">
									<td>资源名称</td>
									<td>大小</td>
									<td>上传时间</td>
									<td>下载次数</td>
									<td>操作</td>
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
										sql = conn.prepareStatement("select * from x2_resourse");
										rs = sql.executeQuery();
										while (rs.next()) {
								%>
								<tr class="main_content">
									<td><%=rs.getString("col_resName ")%></td>
									<td><%=rs.getString("col_size")%></td>
									<td><%=rs.getString("col_upLoadTime")%></td>
									<td><%=rs.getString("col_downLoadTimes")%></td>
									<td><a href="<%=rs.getString("col_link")%>"><button
												type="button" class="btn btn-success disabled"
												disabled="disabled">下载</button></a></td>
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
					</div>
				</div>
				<%-- <div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title text-center">上传文件</h3>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-hover">
								<form
									action="${pageContext.request.contextPath}/servlet/UploadHandleServlet"
									enctype="multipart/form-data" method="post">
									<input type="text" name="username" value="<%=user1%>" /> <br />
									上传文件：<input type="file" name="file1"><br> <input
										class="btn btn-default" type="submit" value="提交">
								</form>
							</table>
						</div>
					</div>
				</div> --%>
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
