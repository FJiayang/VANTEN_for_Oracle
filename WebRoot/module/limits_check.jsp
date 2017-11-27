<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 判断是否是管理员 -->
<%
	if (!adminuser.equals("管理员")) {/* 已在top.jsp中声明，此处报错正常 */
		out.println("<script language=javascript>alert('你不是管理员，不能访问此版块');window.location.href='mainframe.jsp'</script>");
/* 		out.println(adminuser); */
 		return; 
	} else {
		/*  out.println(adminuser); */ /* 已在top.jsp中声明，此处报错正常 */
	}
	Object user0 = session.getAttribute("actualuser");
	/* out.println("欢迎"+user0);//输出当前session用户  */
%>
