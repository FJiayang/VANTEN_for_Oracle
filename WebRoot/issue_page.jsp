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
		<h1 class="heading_title_text text-center">发布信息</h1>
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="panel panel-primary">
					<div class="panel-heading">新闻发布</div>
					<div class="panel-body">
						<div class="form-group">
							<form method="post" action="news/add.jsp">
								<div class="form-group">

									<label>新闻题目</label> <input class="form-control" name="t1"
										type="text" /> <label>新闻内容</label>
									<textarea class="form-control" rows="10" name='t2'></textarea>
									<input type="hidden" class="form-control" name="t3" type="text"
										value="<%=user1%>" /> <br> <input type="submit"
										class="btcss2 btn btn-default" value="增加" />
								</div>


							</form>
						</div>

					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">公告发布</div>
					<div class="panel-body">
						<div class="form-group">
							<form method="post" action="notice/add.jsp">
								<div class="form-group">
									<label>公告内容</label>
									<textarea class="form-control" rows="3" name='a3'></textarea>
									<input type="hidden" class="form-control" name="a4" type="text"
										value="<%=user1%>" /> <br> <input type="submit"
										class="btcss2 btn btn-default" value="增加" />
								</div>


							</form>
						</div>

					</div>
				</div>
			
					<div class="panel panel-primary">
						<div class="panel-heading">新闻删除</div>
						<div class="panel-body">
							<form method="post" action="news/deleterun.jsp">

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
										condition = "SELECT * FROM tb_news";
										rs = sql.executeQuery(condition);
										out.print("<Table class='table table-hover'>");
										out.print("<TR>");
										out.print("<TH ></TH >");
										out.print("<TH >" + "新闻题目" + "</TH >");
										out.print("<TH >" + "新闻内容" + "</TH >");
										out.print("<TH >" + "新闻作者" + "</TH >");
										out.print("<TH >" + "发布时间" + "</TH >");
										out.print("</TR>");
										while (rs.next()) //输出查询结果
										{
											out.print("<TR>");
											out.print("<TD><input type='checkbox' class='checkbox' name='chk' id='chk' value=" + rs.getString(1)
													+ "></TD >");
											out.print("<TD>" + rs.getString(2) + "</TD>");
											out.print("<TD>" + rs.getString(3) + "</TD>");
											out.print("<TD>" + rs.getString(4) + "</TD>");
											out.print("<TD>" + rs.getString(5) + "</TD>");
											out.print("</TR>");
										}
										out.print("</Table>");
										sql.close();
										rs.close();
										con.close();
									} catch (SQLException e1) {
										out.print("无法查询记录");
									}
								%>
								<input type="hidden" name="tablename" value="tb_news" />
								<input type="hidden" name="colname" value="newsid" /> 
								 <input
									class="btn btn-danger pull-right" type="submit" value="删除新闻">
							</form>
						</div>
					</div>
					<div class="panel panel-primary">
						<div class="panel-heading">公告删除</div>
						<div class="panel-body">
							<form method="post" action="news/deleterun.jsp">

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
										condition = "SELECT * FROM notice";
										rs = sql.executeQuery(condition);
										out.print("<Table class='table table-hover'>");
										out.print("<TR>");
										out.print("<TH ></TH >");
										out.print("<TH >" + "公告内容" + "</TH >");
										out.print("<TH >" + "公告作者" + "</TH >");
										out.print("<TH >" + "发布时间" + "</TH >");
										out.print("</TR>");
										while (rs.next()) //输出查询结果
										{
											out.print("<TR>");
											out.print("<TD><input type='checkbox' class='checkbox' name='chk' id='chk' value=" + rs.getString(1)
													+ "></TD >");
											out.print("<TD>" + rs.getString(2) + "</TD>");
											out.print("<TD>" + rs.getString(3) + "</TD>");
											out.print("<TD>" + rs.getString(4) + "</TD>");
											out.print("</TR>");
										}
										out.print("</Table>");
										sql.close();
										rs.close();
										con.close();
									} catch (SQLException e1) {
										out.print("无法查询记录");
									}
								%>
								<input type="hidden" name="tablename" value="notice" /> 
								<input type="hidden" name="colname" value="公告编号" /> 
								<input
									class="btn btn-danger pull-right" type="submit" value="删除公告">
									
							</form>
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
