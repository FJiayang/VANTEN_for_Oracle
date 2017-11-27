<%@ page contentType="text/html;charset=UTF-8"%>
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
<BODY>
	<%
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			out.print("暂时无法访问");
		}
		try {
			Connection con;
			Statement sql;
			ResultSet rs;
			con = DriverManager.getConnection("jdbc:mysql://localhost/news", "root", "123456");
			sql = con.createStatement();
			String condition = null;
			condition = "SELECT * FROM newstable1";
			rs = sql.executeQuery(condition);
			out.print("<Table Border align='center'>");
			out.print("<TR>");
			out.print("<TH width=100 >" + "新闻编号");
			out.print("<TH width=100 >" + "新闻题目");
			out.print("<TH width=200 >" + "新闻内容");
			out.print("<TH width=100 >" + "新闻作者");
			out.print("<TH width=100 >" + "新闻时间");
			out.print("</TR>");
			while (rs.next()) //输出查询结果
			{
				out.print("<TR>");
				out.print("<TD height=100 vertical-align:top>" + rs.getString(1) + "</TD>");
				out.print("<TD height=100 vertical-align:top>" + rs.getString(2) + "</TD>");
				out.print("<TD height=100 vertical-align:top>" + rs.getString(3) + "</TD>");
				out.print("<TD height=100 vertical-align:top>" + rs.getString(4) + "</TD>");
				out.print("<TD height=100 vertical-align:top>" + rs.getString(5) + "</TD>");
				out.print("</TR>");
			}
			out.print("</Table>");
			sql.close();
			rs.close();
			con.close();
		} catch (SQLException e1) {
			out.print("无法查询记录");
		}
	%>
	<form method="post" action="deleterun.jsp">
		<div align='center'>
			请输入你要删除的新闻编号<input name="t1" size="11" type="text"> <input
				type="submit" class="btcss2" value="提交删除" /><br />
		</div>
	</form>
</BODY>
</HTML>