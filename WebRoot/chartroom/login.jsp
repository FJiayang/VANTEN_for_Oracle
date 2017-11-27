<%@ page contentType="text/html;charset=utf-8" language="java"%>
<%@ page import="java.util.Vector"%>
<%@ page import="com.wgh.UserForm"%>
<%
	request.setCharacterEncoding("utf-8");
	Object username = session.getAttribute("actualuser");
	boolean flag = true;
	Vector temp = (Vector) application.getAttribute("myuser");
	if (application.getAttribute("myuser") == null) {
		temp = new Vector();
	}
	UserForm mylist = new UserForm();
	mylist.username = (String) username;
	//保存当前登录的用户名

	Vector myuser = (Vector) application.getAttribute("myuser");
	if (myuser == null) {
		myuser = new Vector();
	}

	if (flag) {
		myuser.addElement(mylist);
	}
	application.setAttribute("myuser", myuser);
	response.sendRedirect("main.jsp");
%>