<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>

<HTML>

<BODY>
	<%
		request.setCharacterEncoding("utf-8");
		// String k2=request.getParameter("a2"); if(k2==null){k2="";} k2=codeString(k2);
		String k3 = request.getParameter("a3");
		if (k3 == null || k3 == "") {
			k3 = null;
		}
		String k4 = request.getParameter("a4");
		if (k4 == null) {
			k4 = "";
		}

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException event) {
			out.print("驱动异常");
		}
		try {
			if (k3 == null) {
				out.print("公告内容不能为空");
				response.setHeader("refresh", "5;url=../issue_page.jsp");
			} else {
				Connection con = null;
				Statement sql = null;
				String condition = null;
				condition = "INSERT INTO notice(公告编号,公告内容,公告作者) VALUES(bbs_se.nextval,'" + k3 + "','" + k4 + "')";
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
				sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
				sql.executeUpdate(condition);
				con.close();
				sql.close();
				out.print("公告发布成功！");
				response.setHeader("refresh", "2;url=../mainframe.jsp");
				out.print("2秒后自动返回...");
			}

		} catch (SQLException event) {
			out.print("发布公告失败");
			response.setHeader("refresh", "5;url=../mainframe.jsp");
			out.print("5秒后自动返回...");
		}
	%>
</BODY>
</HTML>