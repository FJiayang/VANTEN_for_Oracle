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
		<h1 class="heading_title_text text-center">VANTEN信息管理系统</h1>
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<%-- <%!public String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}%>
			<%
				counter = getIpAddr(request);
					try {
						sql = conn.prepareStatement("update counter set visitCount=visitCount+1");
						int rtn = sql.executeUpdate();
					} catch (Exception ex) {
						ex.printStackTrace();
					}
			try {
						sql = conn.prepareStatement("insert into iplist(IP,times,userName)values(?,?,?)"); 
						sql.setString(1, counter);
						sql.setString(2, str_date1);
						sql.setString(3, (String)user0);
						int rtn = sql.executeUpdate();
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			%> --%>
			<%-- <%=counter %> --%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<!-- <div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel">
					Indicators
					<ol class="carousel-indicators">
						<li data-target="#carousel-example-generic" data-slide-to="0"
							class="active"></li>
						<li data-target="#carousel-example-generic" data-slide-to="1"></li>
						<li data-target="#carousel-example-generic" data-slide-to="2"></li>
					</ol>

					Wrapper for slides
					<div class="carousel-inner" role="listbox">
						<div class="item active">
							<img src="images/index1.jpg" alt="...">
							<div class="carousel-caption">...</div>
						</div>
						<div class="item">
							<img src="images/index3.jpg" alt="...">
							<div class="carousel-caption">...</div>
						</div>
						...
					</div>

					Controls
					<a class="left carousel-control" href="#carousel-example-generic"
						role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#carousel-example-generic"
						role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div> -->
				<div class="jumbotron">
					<h1 class="text-center">欢迎访问</h1>
					<p class="text-center">15信管2班</p>
					<!-- Large modal -->
					<button type="button" class="btn btn-primary" data-toggle="modal"
						data-target=".bs-example-modal-lg">按按试试</button>

					<div class="modal fade bs-example-modal-lg" tabindex="-1"
						role="dialog" aria-labelledby="myLargeModalLabel">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<img src="images/index2.png" alt="图片不见了"
									style="display:block;width:100%;" />
							</div>
						</div>
					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">新闻专栏</div>
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
								condition = "SELECT newsid,newtitle,addTime  FROM tb_news";
								rs = sql.executeQuery(condition);
								//String k1=rs.getString(1);
								out.print("<table class='table table-striped'>");
								out.print("<tr>");
								out.print("<th>新闻标题</th>");
								out.print("<th>新闻时间</th>");
								out.print("<th>");
								out.print("</tr>");
								while (rs.next()) //输出查询结果
								{

									out.print("<tr>");
									out.println("<TD><div>" + rs.getString(2) + "</div></TD>");
									out.print("<TD><div>" + rs.getString(3) + "</div></TD>");
									out.print("<TD><button type='button' class='btn btn-success pull-right' data-toggle='modal' data-target='.xw"
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
						<!-- <a class="btn btn-default" href=add.html>增加新闻</a> <a
							class="btn btn-default" href=updatechoose.jsp>修改新闻</a> <a
							class="btn btn-default" href=deleteinput.jsp>删除新闻</a> -->



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

								while (rs.next()) //输出查询结果
								{
						%>
						<div class="modal fade xw<%=rs.getString(1)%>-example-modal-lg"
							tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
							<div class="modal-dialog modal-lg" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>

										<%
											out.print("<h4 class='modal-title' id='gridSystemModalLabel'> " + rs.getString(2) + "</h4></div>");

													out.println("<div class='modal-body'><p class='lead'>" + rs.getString(3) + "</p>");

													out.println("<p>来自：" + rs.getString(4) + "</p>");

													out.println("<p>" + rs.getString(5) + "</p>");
										%>
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
							} catch (SQLException e1) {
								out.print("无法查询记录");
							}
						%>
					</div>
				</div>
				<div class="panel panel-primary">
					<!-- Default panel contents -->
					<div class="panel-heading">公告</div>
					<div class="panel-body">
						<table class="table">
							<tr>
								<th><marquee direction=up height=100 id=m
										onmouseout=m.start() onMouseOver=m.stop() scrollamount=2
										align="center">
										<font size=2>
											<p>
												<%
													Connection con;
													Statement sql;
													ResultSet rs;
													try {
														Class.forName("oracle.jdbc.driver.OracleDriver");
													} catch (ClassNotFoundException e) {
														out.print("驱动异常");
													}
													try {
														con = DriverManager.getConnection(
																"jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
														sql = con.createStatement();
														String condition = null;
														condition = "SELECT 公告内容,公告时间  FROM notice";
														rs = sql.executeQuery(condition);
														while (rs.next()) //输出查询结果
														{
															out.print("<div><span class='zczi2'>" + rs.getString(1) + "</span>");

															out.print("<span class='zczi'>" + rs.getString(2) + "</span></div>");
															out.println("<br/>");
															out.println("<br/>");
														}
														con.close();
														sql.close();
														rs.close();
													} catch (SQLException e1) {
														out.print("无法查询记录");
													}
												%>
											</p>
										</font>
									</marquee></th>
						</table>
						<!-- <a class="btn btn-default" href=add.html>增加公告</a> <a class="btn btn-default" href=selectupdate.jsp>修改公告</a> <a
		class="btn btn-default"	href=selectdelete.jsp>删除公告</a> -->
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
