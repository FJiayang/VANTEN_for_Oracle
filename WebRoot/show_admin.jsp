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
		<h1 class="heading_title_text text-center">查看管理员</h1>
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title text-center">管理员档案管理</h3>
					</div>
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table table-hover">
								<tr>
									<td>管理员号</td>
									<td>管理员名</td>
									<td>性别</td>
									<td>岗位</td>

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
										sql = conn.prepareStatement("select * from adminstrator_record");
										rs = sql.executeQuery();
										while (rs.next()) {
								%>
								<tr>
									<td><%=rs.getString("AdminNo")%></td>
									<td><%=rs.getString("AdminName")%></td>
									<td><%=rs.getString("AdminSex")%></td>
									<td><%=rs.getString("AdminJob")%></td>

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
						<div class="admin_btn pull-right">
							<a href="add_admin.jsp">
								<button type="button" class="btn btn-success">添加管理员</button>
							</a> <a href="change_admin.jsp">
								<button type="button" class="btn btn-primary">修改管理员</button>
							</a>
							<a href="delete_admin.jsp" class="btn btn-danger" role="button">删除管理员</a>
							<!-- Button trigger modal -->
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target=".bs-example-modal-lg">查看总表</button>

							<!-- Modal -->
							<div class="modal fade bs-example-modal-lg" tabindex="-1"
								role="dialog" aria-labelledby="myLargeModalLabel">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">管理员与职责总表</h4>
										</div>
										<div class="modal-body">
											<div class="table-responsive">
												<table class="table table-striped">
													<tr>
														<td class="col-md-1">管理员号</td>
														<td class="col-md-2">管理员名</td>
														<td class="col-md-1">性别</td>
														<td class="col-md-2">岗位</td>
														<td class="col-md-6">职责</td>
													</tr>
													<%
														try {
															ResultSet rs = null;
															Connection conn = null;
															PreparedStatement sql = null;
												
															conn = DriverManager.getConnection(url, user, password);
															Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
															sql = conn.prepareStatement("select * from admin_view");
															rs = sql.executeQuery();
															while (rs.next()) {
													%>
													<tr>
														<td><%=rs.getString("AdminNo")%></td>
														<td><%=rs.getString("AdminName")%></td>
														<td><%=rs.getString("AdminSex")%></td>
														<td><%=rs.getString("AdminJob")%></td>
														<td class="main_content"><%=rs.getString("AdminDuty")%></td>
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

												</table>
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">关闭</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%
			
		%>
		<%@ include file="module/footer.jsp"%>
	</div>
	</div>
	<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
