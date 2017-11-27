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
					name="add_docFile" action="JSPhandle/docFile_update.jsp"
					method="post">
					<table class="table table-bordered">
						<tr>
							<td colspan="7"><b>个人档案</b>
								<button type="submit" class="btn btn-danger pull-right btn-sm">修改</button></td>
						</tr>
						<tr>
							<%
								try {
									Class.forName("oracle.jdbc.driver.OracleDriver");
								} catch (ClassNotFoundException e) {
									out.print("暂时无法访问");
								}
								try {
									Connection con;
									Statement sql;
									ResultSet rs;
									con = DriverManager.getConnection(
											"jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
									sql = con.createStatement();
									String condition = null;
									condition = "SELECT empid FROM tb_docfile";
									rs = sql.executeQuery(condition);
									while (rs.next()) //输出查询结果
									{
							%>
							<td>工号</td>
							<td><input class="form-control" type="text" name="empid"
								readonly value="<%=rs.getInt("empid")%>" readonly></td>
							<%
								}
									con.close();
									sql.close();
									rs.close();
								} catch (

								SQLException e1) {
									out.print("无法查询记录");
								}
							%>

							<td>职务</td>
							<td><select class="form-control" name="empjob">
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
											sql = conn.prepareStatement("select AdminJob from administrator_job");
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
							<%
								Class.forName(driverClass).newInstance();
								try {
									ResultSet rs = null;
									Connection conn = null;
									PreparedStatement sql = null;

									conn = DriverManager.getConnection(url, user, password);
									Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
									sql = conn.prepareStatement("SELECT * FROM tb_docfile where edi_name=?;");
									sql.setString(1, (String) user1);
									rs = sql.executeQuery();
									while (rs.next()) {
							%>
							<td>姓名</td>
							<td><input class="form-control" type="text" name="empname"
								value="<%=rs.getString("empname")%>"></td>
							<td>性别</td>
							<td><select class="form-control" name="empsex">
									<option>男</option>
									<option>女</option>
							</select></td>


						</tr>
						<!--第二行-->
						<tr>
							<td>民族</td>
							<td><input class="form-control" type="text" name="empnation"
								value="<%=rs.getString("empnation")%>"></td>
							<td>籍贯</td>
							<td><input class="form-control" type="text" name="empnative"
								value="<%=rs.getString("empnative")%>"></td>
						</tr>
						<!--第三行-->

						<!--第四行-->
						<tr>
							<td>学校</td>
							<td><input class="form-control" type="text" name="empschool"
								value="<%=rs.getString("empschool")%>"></td>
							<td>学院</td>
							<td><input class="form-control" type="text" name="empdept"
								value="<%=rs.getString("empdept")%>"></td>
						</tr>
						<tr>
							<td>专业</td>
							<td><input class="form-control" type="text" name="empmajor"
								value="<%=rs.getString("empmajor")%>"></td>
							<td>出生年月</td>
							<td><input class="form-control" type="date"
								name="empbirthday" value="<%=rs.getDate("empbirthday")%>"></td>
						</tr>
						<tr>
							<td colspan="7"><b>社交信息</b></td>
						</tr>
						<tr>
							<td>QQ</td>
							<td colspan="0"><input class="form-control" type="text"
								name="empQQ" value="<%=rs.getString("empQQ")%>"></td>
							<td>邮箱</td>
							<td colspan="2"><input class="form-control" type="text"
								name="empemail" value="<%=rs.getString("empemail")%>"></td>
						</tr>
						<tr>
							<td>电话</td>
							<td colspan="0"><input class="form-control" type="text"
								name="empPhoneNum" value="<%=rs.getString("empPhoneNum")%>"></td>
							<td>住址</td>
							<td colspan="2"><input class="form-control" type="text"
								name="empadress" value="<%=rs.getString("empadress")%>"></td>
						</tr>
						<tr>
							<td colspan="7"><b>简历</b></td>
						</tr>
						<tr>
							<td colspan="7"><textarea class="form-control" cols="100%"
									rows="10" name="empResume"><%=rs.getString("empResume")%></textarea></td>
						</tr>
						<tr>
							<td colspan="7"><b>备注</b></td>
						</tr>
						<tr>
							<td colspan="7"><textarea class="form-control" cols="100%"
									rows="10" name="empremark"><%=rs.getString("empremark")%></textarea></td>
						</tr>
						<%
							}
								sql.close();
								rs.close();
								conn.close();
								stmt.close();
							} catch (

							SQLException e1) {
								out.print("无法查询记录");
							}
						%>
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