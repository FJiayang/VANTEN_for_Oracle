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
		String empid = request.getParameter("empid");
		String empjob = request.getParameter("empjob");
		String empname = request.getParameter("empname");
		String empsex = request.getParameter("empsex");
		String empnation = request.getParameter("empnation");
		String empnative = request.getParameter("empnative");
		String empschool = request.getParameter("empschool");
		String empdept = request.getParameter("empdept");
		String empmajor = request.getParameter("empmajor");
		String empbirthday = request.getParameter("empbirthday");
		String empQQ = request.getParameter("empQQ");
		String empemail = request.getParameter("empemail");
		String empPhoneNum = request.getParameter("empPhoneNum");
		String empadress = request.getParameter("empadress");
		String empResume = request.getParameter("empResume");
		String empremark = request.getParameter("empremark");
		int i = 1;
	%>
	<%
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:oracle";
		String use = "C##ROOT";
		String password = "root";
		Class.forName(driver).newInstance();
		try {
			Connection conn = DriverManager.getConnection(url, use, password);
			PreparedStatement sql = conn.prepareStatement(
					"UPDATE tb_docfile SET empjob=?,empname=?,empsex=?,empnation=?,empnative=?,empschool=?,empdept=?,empmajor=?,empbirthday=?,empQQ=?,empemail=?,empPhoneNum=?,empadress=?,empResume=?,empremark=? WHERE empid=?;");
			sql.setString(i++, empjob);
			sql.setString(i++, empname);
			sql.setString(i++, empsex);
			sql.setString(i++, empnation);
			sql.setString(i++, empnative);
			sql.setString(i++, empschool);
			sql.setString(i++, empdept);
			sql.setString(i++, empmajor);
			sql.setString(i++, empbirthday);
			sql.setString(i++, empQQ);
			sql.setString(i++, empemail);
			sql.setString(i++, empPhoneNum);
			sql.setString(i++, empadress);
			sql.setString(i++, empResume);
			sql.setString(i++, empremark);
			sql.setString(i++, empid);
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
			i = 0;
	%>
	<jsp:forward page="insert_success.jsp" />

	<%
		} else if (flag == false) {
			out.println("插入失败，请将以下信息交给开发者处理");
			
	%>
	<%-- <jsp:forward page="insert_success.jsp" /> --%>
	<br>
	<%=i%>
	<br>
	<%=empid%><br>
	<%=empjob%>
	<%=empname%>
	<%=empsex%>
	<%=empnation%>
	<%=empnative%>
	<%=empschool%>
	<%=empdept%>
	<%=empmajor%>
	<%=empbirthday%>
	<%=empQQ%>
	<%=empemail%>
	<%=empPhoneNum%>
	<%=empadress%>
	<%=empResume%>
	<%=empremark%>
	<%
		}
	%>
</body>
</html>
