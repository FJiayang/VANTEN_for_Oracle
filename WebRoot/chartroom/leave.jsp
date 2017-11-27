<%@ page contentType="text/html; charset=utf-8" language="java"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.util.Vector"%>
<%@ page import="com.wgh.UserForm"%>
<%
	Vector temp=(Vector)application.getAttribute("myuser");
	for(int i=0;i<temp.size();i++){
		UserForm mylist=(UserForm)temp.elementAt(i);
		if(mylist.username.equals(session.getAttribute("actualuser"))){
			temp.removeElementAt(i);
/* 			session.setAttribute("actualuser","null"); */
		}
		if(temp.size()==0){
				application.removeAttribute("message");
		}
	}
	response.sendRedirect("../mainframe.jsp");
%>