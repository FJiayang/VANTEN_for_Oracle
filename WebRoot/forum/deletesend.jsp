<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>删除帖子</title>
    <meta http-equiv="refresh" content="1;url=../index.jsp">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  
  <body >
  <%     
         String s[] = request.getParameterValues("chk");
         Connection con;Statement sql;ResultSet rs;  
         try{Class.forName("oracle.jdbc.driver.OracleDriver"); } catch(ClassNotFoundException e){out.print("驱动异常");}
         try{con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","C##root","root");
         sql=con.createStatement();
         if(s!=null){
        	 for(int i=0;i<s.length;i++){
         String text="delete from tb_send where col_id = "+s[i]+"";
                      sql.executeUpdate(text);
        	 }
        	 
        	 
         }
         sql.close();
         con.close();
         out.print("成功删除帖子");
         }catch(SQLException event){out.print("删除帖子失败");}
  
  
  
  %>
  
  </body>
</html>
