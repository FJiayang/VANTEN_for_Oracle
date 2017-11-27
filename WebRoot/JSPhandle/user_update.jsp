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

<title>检验插入页面</title>
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
	<br>
	<%
		boolean flag = false;
		request.setCharacterEncoding("utf-8");
		String Administrator = request.getParameter("Administrator");
		String name = request.getParameter("userName");
		String oldname = request.getParameter("OlduserName");
		String Email = request.getParameter("Email");
		String VIP = request.getParameter("VIP");
	%>
	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:oracle";
		String use = "C##ROOT";
		String password = "root";
		Class.forName(driver).newInstance();
		try{
		Connection conn = DriverManager.getConnection(url, use, password);
		PreparedStatement sql = conn
				.prepareStatement("update user set userName=?,Email=?,Administrator = (case ? when '是' then '1'else '0' end ),VIP = (case ? when '是' then '1'else '0' end )where userName=?;");
		sql.setString(1, name);
		sql.setString(2, Email);
		sql.setString(3, Administrator);
		sql.setString(4, VIP);
		sql.setString(5, oldname);
		int rtn = sql.executeUpdate();
		if (rtn != 0) {
			flag = true;
		}
		sql.close();
		conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	%>
	<!-- 判断是否是插入成功 -->
	<%
		if (flag == true) {
	%>
	<jsp:forward page="insert_success.jsp" />
	<%
		} else if (flag == false) {
	%>
	<%=oldname%>
	<%=name%>
	<%=Administrator%>
	<%=Email%>
	<%=VIP%>
<%-- 	<%=sql.setString(1, name)%>
	<%=sql.setString(2, Email)%>
	<%=sql.setString(4, VIP)%>
	<%=sql.setString(3, Administrator)%>
	<%=sql.setString(5, name)%> --%>
	<%
		}
	%>
</body>
</html>
