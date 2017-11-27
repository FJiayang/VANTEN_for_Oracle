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
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<script src="js/ie-emulation-modes-warning.js"></script>
<style type="text/css">
.main_content {
	text-indent: 2em
}
/* CONTACTS */
.contact-box {
	background-color: #ffffff;
	border: 1px solid #e7eaec;
	padding: 20px;
	margin-bottom: 20px;
}

.contact-box.center-version {
	border: 1px solid #e7eaec;
	padding: 0;
}

.md-skin .contact-box {
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px
		rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
	border: none;
}

.m-t-xs {
	margin-top: 5px;
}

.fa-map-marker:before {
	content: "\f041";
}

.forum-item.active .fa {
	color: #1ab394;
}

.metismenu .active>a>.fa.plus-minus:before {
	content: "\f068";
}

.metismenu .active>a>.fa.plus-times {
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
}

.fa.arrow:before {
	content: "\f104";
}

.forum-icon .fa {
	font-size: 30px;
	margin-top: 8px;
	color: #9b9b9b;
}

.fa.pull-left {
	margin-right: .3em;
}

.fa.pull-right {
	margin-left: .3em;
}

.fa {
	display: inline-block;
	font: normal normal normal 14px/1 FontAwesome;
	font-size: inherit;
	text-rendering: auto;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
	transform: translate(0, 0);
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
			
				<div class="wrapper wrapper-content animated fadeInRight">
					<div class="row">
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
						<div class="col-lg-4">
						
							<div class="contact-box">
									<div class="col-sm-4">
										<div class="text-center">
											<img alt="image" class="img-circle m-t-xs img-responsive"
												src="img/<%=rs.getString("AdminName")%>.jpg">
										</div>
									</div>
									<div class="col-sm-8">
										<h3>
											<strong><%=rs.getString("AdminName")%></strong>
										</h3>
										<p>
											<i class="fa fa-map-marker"></i> 广东财经大学15信管2班
										</p>
										<address>
											<strong>岗位</strong><br> <%=rs.getString("AdminJob")%>
											600<br> <%=rs.getString("AdminSex")%><br> <abbr
												title="Phone">P:</abbr> (123) 456-7890
										</address>
									</div>
									<div class="clearfix"></div>
									
							</div>
						</div>
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
