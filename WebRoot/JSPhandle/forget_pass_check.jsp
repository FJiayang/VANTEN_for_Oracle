<%@ page language="java" import="java.sql.*"
	contentType="text/html;charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'check.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--  
    <link rel="stylesheet" type="text/css" href="styles.css">  
    -->
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String users = request.getParameter("inputUser");
		String pass = request.getParameter("inputPassword");
		String phone = request.getParameter("PhoneNumber");
		boolean flag = false;
		

	%>

	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:oracle";
		String use = "C##ROOT";
		String password = "root";
		Class.forName(driver).newInstance();
		try{
		PreparedStatement sql = null;
		ResultSet rs = null;
		Connection conn = null;
		conn = DriverManager.getConnection(url, use, password);
		sql = conn.prepareStatement("select * from tb_user where userName=? and Email=? and phoneNum=?");
		sql.setString(1, users);
		sql.setString(2, pass);
		sql.setString(3, phone);
		rs = sql.executeQuery();
		if (rs.next()) {
			flag = true;
		}
			rs.close();
		sql.close();
		conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	%>
	<!-- 判断是否是正确的登录用户 -->
	<%
		if (flag == true) {
				session.setAttribute("actualuser", users);
	%>
	<jsp:forward page="login_show.jsp" />
	<%
		} else if (flag == false) {
		out.println("<script language=javascript>alert('邮箱或手机输入有误，修改失败');window.location.href='index.html'</script>");
		}
		
	%>
</body>
</html>
