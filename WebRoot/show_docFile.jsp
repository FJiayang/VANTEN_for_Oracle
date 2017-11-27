<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%-- <%@ page import="login.*" %>  --%>
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
<style type="text/css">
/* .jumbotron{
background:url(images/index3.jpg);
background-repeat:no-repeat;
height:100%;
background-size:100% 100%;
} */
.zczi {
	float: right;
}

.zczi2 {
	float: left;
}

.intro_img {
	white-space: nowrap
}
</style>
</head>

<%-- <% 
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 
java.util.Date currentTime = new java.util.Date();//得到当前系统时间
 
String str_date1 = formatter.format(currentTime); //将日期时间格式化 
String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 
%> --%>
<body onbeforeunload="window.location='JSPhandle/logout.jsp'">
	<%
		if (session.getAttribute("actualuser") == null) {
			out.println(
					"<script language=javascript>alert('登录超时 (1440 秒未活动)或未登录，请重新登录。');window.location.href='index.html'</script>");
			return;
		}
		Object user0 = session.getAttribute("actualuser");
		/* out.println("欢迎"+user0);//输出当前session用户  */
	%>
	<%@ include file="module/top.jsp"%>
	<div class="container">
		<h1 class="heading_title_text text-center">团队成员档案</h1>
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>

			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">所有个人档案记录</div>
					<div class="panel-body">
						<%
							try {
								Class.forName("oracle.jdbc.driver.OracleDriver");
							} catch (ClassNotFoundException e) {
								out.print("驱动异常");
							}
							try {
								Connection con;
								Statement sql;
								ResultSet rs;
								con = DriverManager.getConnection(
										"jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
								sql = con.createStatement();
								String condition = null;
								condition = "SELECT empid,empname,empjob FROM tb_docfile";
								rs = sql.executeQuery(condition);
								//String k1=rs.getString(1);
								out.print("<table class='table table-striped table-responsive'>");
								out.print("<tr>");
								out.print("<th>姓名</th>");
								out.print("<th>岗位</th>");
								out.print("<th>");
								out.print("</tr>");
								while (rs.next()) //输出查询结果
								{

									out.print("<tr>");
									out.println("<TD><div>" + rs.getString(2) + "</div></TD>");
									out.print("<TD><div>" + rs.getString(3) + "</div></TD>");
									out.print(
											"<TD><button type='button' class='btn btn-primary pull-right' data-toggle='modal' data-target='.xw"
													+ rs.getString(1) + "-example-modal-lg'>查看</button></TD>");
									out.print("</tr>");

								}
								out.print("</table>");
								con.close();
								sql.close();
								rs.close();
							} catch (SQLException e1) {
								out.print("无法查询记录");
							}
						%>
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
								condition = "SELECT * FROM tb_docfile";
								rs = sql.executeQuery(condition);

								while (rs.next()) //输出查询结果
								{
						%>
						<div
							class="modal fade xw<%=rs.getString("empid")%>-example-modal-lg"
							tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class='modal-title' id='gridSystemModalLabel'><%=rs.getString("empjob")%></h4>
									</div>
									<div class='modal-body'>
										<table class="table table-bordered">
											<tr>
												<td colspan="7" class="info"><b>个人档案</b></td>
											</tr>
											<tr>
												<td>工号</td>
												<td><%=rs.getString("empid")%></td>
												<td>职务</td>
												<td><%=rs.getString("empjob")%></td>
												<td rowspan="5"><%-- <img alt="image"
													src="img/<%=rs.getString("empname")%>.jpg"> --%></td>
											</tr>
											<tr>
												<td>姓名</td>
												<td><%=rs.getString("empname")%></td>
												<td>性别</td>
												<td><%=rs.getString("empsex")%></td>


											</tr>
											<!--第二行-->
											<tr>
												<td>民族</td>
												<td><%=rs.getString("empnation")%></td>
												<td>籍贯</td>
												<td><%=rs.getString("empnative")%></td>
											</tr>
											<!--第三行-->

											<!--第四行-->
											<tr>
												<td>学校</td>
												<td><%=rs.getString("empschool")%></td>
												<td>学院</td>
												<td><%=rs.getString("empdept")%></td>
											</tr>
											<tr>
												<td>专业</td>
												<td><%=rs.getString("empmajor")%></td>
												<td>出生年月</td>
												<td><%=rs.getString("empbirthday")%></td>
											</tr>
											<tr>
												<td colspan="7" class="info"><b>社交信息</b></td>
											</tr>
											<tr>
												<td>QQ</td>
												<td colspan="0"><%=rs.getString("empQQ")%></td>
												<td>邮箱</td>
												<td colspan="2"><%=rs.getString("empemail")%></td>
											</tr>
											<tr>
												<td>电话</td>
												<td colspan="0"><%=rs.getString("empPhoneNum")%></td>
												<td>住址</td>
												<td colspan="2"><%=rs.getString("empadress")%></td>
											</tr>
											<tr>
												<td colspan="7" class="info"><b>简历</b></td>
											</tr>
											<tr>
												<td colspan="7"><%=rs.getString("empResume")%></td>
											</tr>
											<tr>
												<td colspan="7" class="info"><b>备注</b></td>
											</tr>
											<tr>
												<td colspan="7"><%=rs.getString("empremark")%></td>
											</tr>
										</table>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default "
											data-dismiss="modal">关闭</button>
									</div>

								</div>
							</div>
						</div>
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
					</div>
				</div>
			</div>
		</div>
		<%@ include file="module/footer.jsp"%>
	</div>

	<script src="js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
</body>
</html>
