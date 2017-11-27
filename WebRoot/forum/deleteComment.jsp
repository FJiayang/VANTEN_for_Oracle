<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>删除评论</title>
    <meta http-equiv="refresh" content="1;url=../index.jsp">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  
  <body>
  <%
          String k1 = request.getQueryString();//得到ID的值(id=数字).
          String re = "\\D+";                  //正则表达式
          String result = k1.replaceAll(re, ""); //找到不是数字的字符,用""替代
          
         Connection con;Statement sql; 
         try{Class.forName("oracle.jdbc.driver.OracleDriver"); } catch(ClassNotFoundException e){out.print("驱动异常");}
         try{con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","root","");
         sql=con.createStatement();
         String text="delete from comment where commentid = '"+result+"'" ;
         sql.executeUpdate(text);
         sql.close();
         con.close();
         out.print("成功删除评论");
         }catch(SQLException event){out.print("删除评论失败");}
  
  
  
 %>

   </body>
</html>
