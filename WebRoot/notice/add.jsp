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
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
				CallableStatement sql = con.prepareCall("{CALL PRC_notice(bbs_se.nextval,'" + k3 + "','" + k4 + "')}");
				sql.executeUpdate();
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