<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>帖子列表</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="forum/css/animate.css" rel="stylesheet">
<link href="forum/css/style.css" rel="stylesheet">
<script src="js/jquery-2.1.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

<!-- Custom and plugin javascript -->
<script src="js/inspinia.js"></script>
<script src="js/plugins/pace/pace.min.js"></script>

<!-- iCheck -->
<script src="js/plugins/iCheck/icheck.min.js"></script>
</head>

<body>
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
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="row">
					<div class="col-md-8">
						<h2>帖子列表</h2>
					</div>
					<div class="col-md-2 pull-right">
						<a class="btn btn-default pull-right createNew"
							href="sendForum.jsp" role="button">发表帖子</a>
					</div>
				</div>
				<div class="row">
					<div class="mail-tools">
						<div class="btn-group pull-right"></div>
						<form action="forum/deletesend.jsp" method="post">
							<%
								if (!adminuser.equals("")) {
							%>
							<input class="btn btn-danger deleteTitle pull-right"
								type="submit" value="删除帖子">
							<%
								} else {
									out.print("");
								}
							%>
							<%
								Connection con;
								Statement sql;
								ResultSet rs;
								int id = 0;
								String regex1 = "<(?!img).*?>";
								/* String username = "admin"; */
								String subject = "", content = "", username = null;
								try {
									Class.forName("oracle.jdbc.driver.OracleDriver");
								} catch (ClassNotFoundException e) {
									out.print("驱动异常");
								}
								con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
								sql = con.createStatement();
								String send = null;
								content = "select col_id,col_subject,col_username,col_flag,to_char(col_updatetime,'yyyy-mm-dd hh24:mi:ss') as col_updatetime from tb_send order by col_flag desc,col_updatetime desc";
								rs = sql.executeQuery(content);
								while (rs.next()) {
									id = rs.getInt("col_id");
									subject = rs.getString("col_subject");
									username = rs.getString("col_username");
							%>
							<div class="row">
								<table class="table table-hover">
									<tbody>
										<tr>
											<td><input type="checkbox" class="checkbox" name="chk"
												id="chk" value=<%=id%>></td>
											<%
												if (rs.getInt("col_flag") == 1 && subject.matches(regex1)) {
														//置顶且匹配
											%>

											<td><a href=" >"><strong><script
															type='text/html' style='display:inline;color:red;'><%=subject%></script></strong></a>
											</td>
											<%
												}
													if (rs.getInt("col_flag") == 0 && !(subject.matches(regex1))) {
														//不置顶不匹配
											%>

											<td><a href="detail.jsp?id=<%=id%>"><%=subject%></a></td>

											<%
												}
													if (rs.getInt("col_flag") == 1 && !(subject.matches(regex1))) {
														//置顶但不匹配
											%>

											<td><a href="detail.jsp?id=<%=id%>"><strong><script
															type='text/html' style='display:inline;color:red;'><%=subject%></script></strong></a>
											</td>

											<%
												}
													if (rs.getInt("col_flag") == 0 && subject.matches(regex1)) {
														//不置顶但匹配
											%>
											<td><a href="detail.jsp?id=<%=id%>"><script
														type='text/html' style='display:inline'><%=subject%></script></a>
											</td>
											<%
												}
											%>
											<td class="text-right mail-date"><%=username%>&nbsp;&nbsp;<%=rs.getString("col_updatetime") %></td>
										</tr>

									</tbody>
								</table>
							</div>
							<%
								}
								sql.close();
								rs.close();
								con.close();
							%>

						</form>
						<div class="col-md-4 pull-right"></div>
					</div>
				</div>

			</div>
		</div>
		<%@ include file="module/footer.jsp"%>
	</div>




	<!-- Mainly scripts -->

	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
		});
	</script>
</body>

</html>
