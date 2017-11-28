<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@ page import="com.wgh.MySqlconn"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>登录成功</title>
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
		java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		java.util.Date currentTime = new java.util.Date();//得到当前系统时间

		String str_date1 = formatter.format(currentTime); //将日期时间格式化 
		String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式 
		String driverClass = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:oracle";
		String user = "C##ROOT";
		String password = "root";

		Object user0 = session.getAttribute("actualuser");
		String counter = null;
		Class.forName(driverClass).newInstance();
		try {
			Connection conn = null;
			conn = DriverManager.getConnection(url, user, password);
			Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			stmt.close();
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		/* out.println("欢迎"+user0);//输出当前session用户  */
	%>
	<%!public String getIpAddr(HttpServletRequest request) {
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
			Connection conn = null;
			PreparedStatement sql = null;
			conn = DriverManager.getConnection(url, user, password);
			sql = conn.prepareStatement("update counter set visitCount=visitCount+1");
			int rtn = sql.executeUpdate();
			String commit = "commit";
			sql.executeUpdate(commit);
			sql.close();
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		try {
			Connection conn = null;
			PreparedStatement sql = null;
			conn = DriverManager.getConnection(url, user, password);
			sql = conn.prepareStatement("insert into iplist(IP,col_times,userName)values(?,?,?)");
			sql.setString(1, counter);
			sql.setString(2, str_date1);
			sql.setString(3, (String) user0);
			int rtn = sql.executeUpdate();
			String commit = "commit";
			sql.executeUpdate(commit);
			sql.close();
			conn.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	%>
	<%
		
	%>
	登录成功.
	<br>
	<%
		response.setHeader("refresh", "0;url=../mainframe.jsp");
	%>
</body>
</html>
