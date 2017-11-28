<%@ page language="java" import="java.util.*,java.sql.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%-- <%!
        public String codeString(String s)
      { String str=s;
   try{byte b[]=str.getBytes("ISO-8859-1");
       str=new String(b);   return str;
     } catch(Exception e) { return str; }
}
%> --%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>帖子详情</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>

   <%    
  String referer=response.getHeader("Referer");
              if(referer==null||!referer.startsWith("detail.jsp")){  
               response.sendRedirect("../index.jsp");  
                } 
         request.setCharacterEncoding("utf-8");
         String k5 = request.getParameter("comment");
         String k6 = request.getParameter("subid");
         String k7 = request.getParameter("username");
         Connection con; Statement sql;ResultSet rs;
         try{Class.forName("oracle.jdbc.driver.OracleDriver"); } catch(ClassNotFoundException e){out.print("驱动异常");}
         try{con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","C##ROOT","root");
         sql=con.createStatement();
         String text="insert into tb_comment(col_commentid,col_subid,col_comment,col_time,col_username) values(bbs_se.nextval,'"+k6+"','"+k5+"',SYSDATE,'"+k7+"')";
        String updatesend = "update tb_send set col_updatetime = SYSDATE where col_id = '"+k6+"'";
        
         sql.executeUpdate(updatesend);
         sql.executeUpdate(text);
         String commit="commit";
        	 sql.executeUpdate(commit);
         sql.close();
         con.close();
         
         out.print("成功发表评论");
         }catch(SQLException event){out.print("数据更新异常");}
  %>
  
  
  <a href="../detail.jsp?id=<%=k6%>">点击返回评论页面</a>
  </body>
</html>
