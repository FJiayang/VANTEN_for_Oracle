<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="1;url=../index.jsp">
<body>
<%    

         /* String referer=response.getHeader("Referer");         //防止用户在地址栏上直接访问
         if(referer==null||!referer.startsWith("detail.jsp")){  
          response.sendRedirect("../index.jsp");  
               return;
          } */ 
     String k1 = request.getQueryString();//得到ID的值(id=数字).
     String re = "\\D+";                  //正则表达式
     String result = k1.replaceAll(re, ""); //找到不是数字的字符,用""替代   
     Connection con;Statement sql;  
     try{Class.forName("oracle.jdbc.driver.OracleDriver"); } catch(ClassNotFoundException e){out.print("驱动异常");}
     try{con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","root","");
     sql=con.createStatement();
     String text="update send set flag = 1 where id = '"+result+"'";
     sql.executeUpdate(text);
     sql.close();
     con.close();
     out.print("成功置顶帖子");
     }catch(SQLException event){out.print("置顶帖子失败");}
     
%>
</body>
</html>