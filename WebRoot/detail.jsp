<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,java.util.regex.Pattern"%>
<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>帖子详情</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="forum/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="forum/css/animate.css" rel="stylesheet">
<link href="forum/css/style.css" rel="stylesheet">
<script type="text/javascript">

	function validateSubject(field) {
		return (field == "") ? "主题不能为空--" : ""
	}
	function validateContent(field) {
		return (field == "") ? "内容不能为空--" : ""
	}
	function validate(form) {
		fail = validateSubject(form.subject.value)
		fail += validateContent(form.content.value)
		if (fail == "") return true;else {
			alert(fail);return false;
		} //判断表单的内容不能为空
	}
</script>
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
	<%
		String k1 = request.getQueryString();//得到ID的值(id=数字).
		String re = "\\D+"; //正则表达式
		String result = k1.replaceAll(re, ""); //找到不是数字的字符,用""替代
	%>
	<%@ include file="module/top.jsp"%>
	<div class="container">
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="row">
					<div class="col-md-8">
						<h2>帖子详情</h2>
					</div>
					<div class="col-md-4 pull-right">
						<a class="btn btn-default pull-right createNew" href="index.jsp"
							role="button">回到首页</a>


					</div>


					<%
						String id = request.getParameter("id");
						String username = "";
						Connection con;
						Statement sql;
						ResultSet rs;
						String content = "";
						try {
							Class.forName("oracle.jdbc.driver.OracleDriver");
						} catch (ClassNotFoundException e) {
							out.print("驱动异常");
						}
						con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle",
								"C##ROOT", "root");
						sql = con.createStatement();
						String send = null;
						content = "select col_subject,col_content,to_char(col_time,'yyyy-mm-dd hh24:mi:ss') as col_time,col_flag,col_username from tb_send where col_id = '" + request.getParameter("id")
								+ "'";
						rs = sql.executeQuery(content);

						while (rs.next()) {
					%>
					<%
						if (!adminuser.equals("")) {
					%>

					<%
						if (rs.getInt("col_flag") == 0) {
					%>
					<div class="col-md-4 pull-right">
						<a class="btn btn-success pull-right createNew"
							href="forum/submitTop.jsp?id=<%=result%>" role=button>置顶帖子</a>
					</div>
					<%
						} else {
					%>
					<div class="col-md-4 pull-right">
						<a class="btn btn-warning pull-right createNew"
							href="forum/submitDown.jsp?id=<%=result%>" role=button>取消置顶</a>
					</div>
					<%
						}
					%>
					<%
						} else {
								out.print("");
							}
					%>
				</div>
				<div class="row">
					<div class="mail_box col-lg-10 col-md-10">
						<div class="mail-tools tooltip-demo m-t-md">
							<div class="mail-body">
								<h3>
									<%
										if (rs.getInt("col_flag") == 1) {
									%>
									<span class="font-noraml">主题: </span><strong style="color=red"><%=rs.getString("col_subject")%></strong>
									<%
										} else {
									%>

									<span class="font-noraml">主题: </span>><%=rs.getString("col_subject")%>

									<%
										}
									%>

								</h3>

							</div>


							<div class="mail-body">
								<div class="mail-Content">
									<h3>内容</h3>
									<%=rs.getString("col_content")%>
									<h5>
										<span class="pull-right font-noraml"><%=rs.getString("col_username")%>&nbsp;<%=rs.getString("col_time")%></span>

									</h5>
									<%
										}
										sql.close();
										rs.close();
										con.close();
									%>




								</div>
								<div class="mail-body">
									<h3>评论信息</h3>
									<%
										int floor = 1;
										Connection comcon;
										Statement comsql;
										ResultSet comrs;
										try {
											Class.forName("oracle.jdbc.driver.OracleDriver");
										} catch (ClassNotFoundException e) {
											out.print("驱动异常");
										}
										comcon = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
										comsql = comcon.createStatement();
										String comment = null;
										comment = "select col_commentid,col_comment,to_char(col_time,'yyyy-mm-dd hh24:mi:ss') as col_time,col_username from tb_comment where col_subid = (select col_id from tb_send where col_id ='"
												+ id + "')";
										comrs = comsql.executeQuery(comment);
										try {
											while (comrs.next()) {
									%>

									<div class="mail-body">
										<%
											if (!adminuser.equals("")) {
										%>
										<a class="btn btn-danger btn-xs"
											href="forum/deleteComment.jsp?commentid=<%=comrs.getInt("col_commentid")%>"
											role="button"> <span class="glyphicon glyphicon-remove"></span></a><%
											} else {
														out.print("");
													}
										%>
										<%=comrs.getString("comment")%>
										

										<h5>
											<span class="pull-right font-noraml"><%=floor++%>楼&nbsp<%=comrs.getString("col_username")%>&nbsp<%=comrs.getString("col_time")%></span>

										</h5>
									</div>



									<%
										}
										} catch (Exception e) {
											out.print("无法显示评论信息");
										}
										comsql.close();
										comrs.close();
										comcon.close();
									%>
								</div>
								<br> <br> <br> <br>
								<div class="mail-text h-200">
									<form action="forum/sendComment.jsp"
										onsubmit="return validate(this)">
										<input type="hidden" name="subid" value=<%=result%>>
										<h4>评论</h4>

										<textarea rows="10" cols="135" name="comment"
											class="form-control"></textarea>
										<input class="btn btn-default pull-right createNew"
											type="submit" value="提交"> <input type="hidden"
											name="username" value="<%=user1%>" />
									</form>
								</div>
								<div class="clearfix"></div>
							</div>

							<div class="clearfix"></div>
						</div>
					</div>
				</div>
				<%@ include file="module/footer.jsp"%>
			</div>
		</div>
	</div>






	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>

	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js"></script>
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
