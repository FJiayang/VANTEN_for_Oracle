<%@ page language="java" contentType="text/html; charset=utf-8"  
    pageEncoding="utf-8"%>  
<%@ page import="login.*" %>  
<%   
   login in = new login();  
   String actualname = request.getParameter("inputUser");   
   boolean isLoginSucc = in.Login(actualname); 
      if(isLoginSucc)  
   {   
       session.setAttribute("inputUser", actualname);  
       session.setMaxInactiveInterval(1440);  
   }  
   else  
   {  
       out.println("<script>alert('登陆失败！');window.location.href='../index.html'</script>");  
   } 
%>  