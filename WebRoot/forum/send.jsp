<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%-- <%!
        public String codeString(String s)
      { String str=s;
   try{byte b[]=str.getBytes("ISO-8859-1");
       str=new String(b);   return str;
     } catch(Exception e) { return str; }
}
%> --%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="1;url=../index.jsp">
</head>
<body>
	<%
		/* String URL = "sendForum.jsp";
		String referer = response.getHeader("Referer");
		if (referer == null || !referer.startsWith(URL)) {
			response.sendRedirect(URL);
			return;
		} */
		request.setCharacterEncoding("utf-8");
		String k2 = request.getParameter("subject");
		String k3 = request.getParameter("content");
		String k4 = request.getParameter("username");
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
			String text = "insert into tb_send(col_subject,col_content,col_time,col_username,col_updatetime) values('" + k2 + "','" + k3 + "',SYSDATE,'" + k4 + "',SYSDATE)";
			sql.executeUpdate(text);
			sql.close();
			con.close();
			out.print("成功发表帖子");
		} catch (SQLException event) {
			out.print("数据更新异常");
		}
	%>
</body>
</html>