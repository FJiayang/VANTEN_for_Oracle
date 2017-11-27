<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%  
  session.removeAttribute("actualuser");  
  out.println("<script>window.location.href='../index.html'</script>");  
  
%>  