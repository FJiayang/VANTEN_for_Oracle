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
		boolean flag = false;
		
		
		
		
		
		session.setMaxInactiveInterval(1440);
	%>

	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:oracle";
		String use = "C##ROOT";
		String password = "root";
		Class.forName(driver).newInstance();
		try {
		PreparedStatement sql = null;
		Connection conn = null;
		ResultSet rs = null;
		conn = DriverManager.getConnection(url, use, password);
		sql = conn.prepareStatement("select * from tb_user where userName=? and password=?");
		sql.setString(1, users);
		sql.setString(2, pass);
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
	<%
		try {
		PreparedStatement vipsql = null;
		ResultSet viprs = null;
		Connection conn = null;
		conn = DriverManager.getConnection(url, use, password);
			vipsql = conn.prepareStatement(
					"select userName,case when VIP = 1 then 'VIP用户' else '普通用户' end as VIP,case when Administrator = 1 then '管理员' else '' end as Administrator from show_user_view where userName=?");
			vipsql.setString(1, users);
			viprs = vipsql.executeQuery();
			while (viprs.next()) {
				String vipinfo = viprs.getString("VIP");
				String adminfo = viprs.getString("Administrator");
				session.setAttribute("VIPuser", vipinfo);
				session.setAttribute("Adminuser", adminfo);
			}
			viprs.close();
		vipsql.close();
		conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	%>
	<!-- 判断是否是正确的登录用户 -->
	<%
		if (flag == true) {
		session.setAttribute("actualuser", users);
		application.setAttribute("ul",users);
	%>
	<jsp:forward page="login_show.jsp" />
	<%
		} else if (flag == false) {
	%>
	<jsp:forward page="login_fail.jsp" />
	<%
		}
		
		
		
	%>
</body>
</html>
