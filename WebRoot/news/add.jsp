<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<%!//处理字符串的方法：

	public String codeString(String s) {
		String str = s;
		try {
			str = new String(s.getBytes("ISO8859-1"), "UTF-8");
			return str;
		} catch (Exception e) {
			return str;
		}
	}%>
<HTML>
<head>

<title></title>
</head>

<BODY>
	<%
		String k1 = request.getParameter("t1");
		if (k1 == null) {
			k1 = "";
		}
		k1 = codeString(k1);
		String k2 = request.getParameter("t2");
		if (k2 == null) {
			k2 = "";
		}
		k2 = codeString(k2);
		String k3 = request.getParameter("t3");
		if (k3 == null) {
			k3 = "";
		}
		k3 = codeString(k3);
		//String k4=request.getParameter("a4"); if(k4==null){k4="";} k4=codeString(k4);
		//String k5=request.getParameter("a5"); if(k5==null){k5="";} k5=codeString(k5);

		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException event) {
			out.print("驱动异常");
		}
		try {
			Connection con = null;
			Statement sql = null;
			String condition = null;
		condition = "INSERT INTO tb_news(newtitle,newstext,newsfrom) VALUES('" + k1 + "','" + k2 + "','" + k3
				+ "')";
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
			sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
			sql.executeUpdate(condition);
			out.print("新闻发布成功！");
			out.print("2秒后自动返回...");
			con.close();
			sql.close();
			response.setHeader("refresh", "2;url=../mainframe.jsp");
		} catch (SQLException event) {
			out.print("发布新闻失败");
			response.setHeader("refresh", "5;url=../mainframe.jsp");
			out.print("5秒后自动返回...");
		}
	%>
</BODY>
</HTML>