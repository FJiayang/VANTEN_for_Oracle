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

			<div class="col-sm-12 col-lg-9 col-md-9 table-responsive"
				align="center">
				<h3 class="text-center">添加档案</h3>
				<form class="form-horizontal" role="form" id="add_docFile"
					name="add_docFile" action="JSPhandle/docFile_insert.jsp"
					method="post">
					<table class="table table-bordered table-responsive">
						<tr>
							<td colspan="7"><b>个人档案</b>
								<button type="submit" class="btn btn-success pull-right btn-sm">提交</button></td>
						</tr>
						<tr>
							<%
								String driverClass = "oracle.jdbc.driver.OracleDriver";
								String url = "jdbc:oracle:thin:@localhost:1521:oracle";
								String user = "C##ROOT";
								String password = "root";

								try {
									Class.forName(driverClass).newInstance();
									ResultSet rs = null;
									Connection conn = null;
									PreparedStatement sql = null;
									conn = DriverManager.getConnection(url, user, password);
									Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
									sql = conn.prepareStatement("SELECT count(empid) col_Num FROM tb_docfile");
									rs = sql.executeQuery();
									while (rs.next()) {
							%>

							<td>工号</td>
							<td><input class="form-control" type="text" name="empid"
								readonly value="<%=rs.getInt("COL_NUM") + 1%>"></td>

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
							<td>职务</td>
							<td><select class="form-control" name="empjob">
									<%
										try {
											Class.forName(driverClass).newInstance();
											ResultSet rs = null;
											Connection conn = null;
											PreparedStatement sql = null;
											conn = DriverManager.getConnection(url, user, password);
											Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
											sql = conn.prepareStatement("select * from administrator_job");
											rs = sql.executeQuery();
											while (rs.next()) {
									%>
									<option value="<%=rs.getString("AdminJob")%>"><%=rs.getString("AdminJob")%></option>
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

							</select></td>
							<td rowspan="5"><input type="file"></td>
						</tr>
						<tr>
							<td>姓名</td>
							<td><input class="form-control" type="text" name="empname"></td>
							<td>性别</td>
							<td><select class="form-control" name="empsex">
									<option>男</option>
									<option>女</option>
							</select></td>


						</tr>
						<!--第二行-->
						<tr>
							<td>民族</td>
							<td><input class="form-control" type="text" name="empnation"></td>
							<td>籍贯</td>
							<td><input class="form-control" type="text" name="empnative"></td>
						</tr>
						<!--第三行-->

						<!--第四行-->
						<tr>
							<td>学校</td>
							<td><input class="form-control" type="text" name="empschool"
								value="广东财经大学"></td>
							<td>学院</td>
							<td><input class="form-control" type="text" name="empdept"></td>
						</tr>
						<tr>
							<td>专业</td>
							<td><input class="form-control" type="text" name="empmajor"></td>
							<td>出生年月</td>
							<td><input class="form-control" type="date"
								name="empbirthday"></td>
						</tr>
						<tr>
							<td colspan="7"><b>社交信息</b></td>
						</tr>
						<tr>
							<td>QQ</td>
							<td colspan="0"><input class="form-control" type="text"
								name="empQQ"></td>
							<td>邮箱</td>
							<td colspan="2"><input class="form-control" type="text"
								name="empemail"></td>
						</tr>
						<tr>
							<td>电话</td>
							<td colspan="0"><input class="form-control" type="text"
								name="empPhoneNum"></td>
							<td>住址</td>
							<td colspan="2"><input class="form-control" type="text"
								name="empadress"></td>
						</tr>
						<tr>
							<td colspan="7"><b>简历</b></td>
						</tr>
						<tr>
							<td colspan="7"><textarea class="form-control" cols="100%"
									rows="10" name="empResume"></textarea></td>
						</tr>
						<tr>
							<td colspan="7"><b>备注</b></td>
						</tr>
						<tr>
							<td colspan="7"><textarea class="form-control" cols="100%"
									rows="10" name="empremark"></textarea></td>
						</tr>
						<input type="hidden" name="edi_name" value="<%=user1%>" readonly>
					</table>
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