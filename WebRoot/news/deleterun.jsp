<%@ page contentType="text/html;charset=UTf-8"%>
<%@ page import="java.sql.*"%>
<%!//处理字符串的方法：
	public String codeString(String s) {
		String str = s;
		try {
			byte b[] = str.getBytes("ISO-8859-1");
			str = new String(b);
			return str;
		} catch (Exception e) {
			return str;
		}
	}%>
<HTML>
<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<!-- <meta http-equiv="refresh" content="2;url=../issue_page.jsp"> -->
<title></title>
</head>

<BODY>
	<%
		request.setCharacterEncoding("utf-8");
		String s[] = request.getParameterValues("chk");
		String table_name = request.getParameter("tablename");
		String colname = request.getParameter("colname");
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			out.print("驱动异常");
		}
		try {
		Connection con = null;
		Statement sql = null;
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
			sql = con.createStatement();
			if (s != null) {
				for (int i = 0; i < s.length; i++) {
					String text = "DELETE from " + table_name + " WHERE " + colname + " = " + s[i];
					sql.executeUpdate(text);
				}
			}
			String commit="commit";
        	 sql.executeUpdate(commit);
			sql.close();
			con.close();
			out.print("成功删除");
			response.setHeader("refresh", "2;url=../issue_page.jsp");
			out.print("2秒后自动返回...");
		} catch (SQLException event) {
			 out.print("删除新闻失败,以下信息供开发者查看，查看传值是否正常<br>");
			/*response.setHeader("refresh", "5;url=../issue_page.jsp"); */
			out.print(colname);
			out.print(table_name);
			if (s != null) {
				for (int i = 0; i < s.length; i++) {
				out.print(s[i]);
				}
			}
		}
	%>
</BODY>
</HTML>