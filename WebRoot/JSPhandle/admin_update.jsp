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
		String adminNo = request.getParameter("adminno");
		String name = request.getParameter("adminname");
		String adminsex = request.getParameter("sex");
		String adminjob = request.getParameter("job");
		String oldname = request.getParameter("OldAdminName");
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
				.prepareStatement("update adminstrator_record set AdminNo = ?,AdminSex = ?,AdminJob = ?,AdminName = ? where AdminName = ?");
		sql.setString(1, adminNo);
		sql.setString(2, adminsex);
		sql.setString(3, adminjob);
		sql.setString(4, name);
		sql.setString(5, oldname);
		int rtn = sql.executeUpdate();
		String commit="commit";
        sql.executeUpdate(commit);
		if (rtn != 0) {
			flag = true;
		}
		sql.close();
		conn.close();
		 }catch (Exception ex) {
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
 	<%=adminNo %>
	<%=adminsex %>
	<%=adminjob %>
	<%=name %>
	<%=oldname %> 
	<%-- <jsp:forward page="insert_fail.jsp" /> --%>
	<%
		}
	%>
</body>
</html>
