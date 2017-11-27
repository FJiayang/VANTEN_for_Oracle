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
<style>
.zczi {
	float: right;
}

.zczi2 {
	float: left;
}
</style>
<div align=center>
	<b>公告栏</b>
</div>
<p></p>
<center>
	<table border>
		<tr>
			<th bgcolor=#FFFFFF><marquee direction=up height=300 width=500
					id=m onmouseout=m.start() onMouseOver=m.stop() scrollamount=2
					align="center">
					<font size=2>

						<p></p>
						<p>
							<%
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
									String condition = null;
									condition = "SELECT 公告内容,公告时间  FROM notice";
									rs = sql.executeQuery(condition);
									while (rs.next()) //输出查询结果
									{
										out.print("<div><span class='zczi2'>" + rs.getString(1) + "</span>");

										out.print("<span class='zczi'>" + rs.getString(2) + "</span></div>");
										out.println("<br/>");
										out.println("<br/>");
									}
									con.close();
								sql.close();
								rs.close();
								} catch (SQLException e1) {
									out.print("无法查询记录");
								}
							%>
						</p >
						</p>
					</font>
				</marquee></th>
	</table>
	<center>
		<a href=add.html>增加公告</a> <a href=selectupdate.jsp>修改公告</a> <a
			href=selectdelete.jsp>删除公告</a>
		<BODY>
		</BODY>
</HTML>