<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{str=new String(s.getBytes("ISO8859-1"),"UTF-8");   
           return str;   
         } catch(Exception e) { return str; }
    }
%>
<HTML>
<BODY>
 <% 
 request.setCharacterEncoding("utf-8");
 String k1=request.getParameter("newsid"); if(k1==null){k1="";} 

    Connection con;
    Statement sql; 
    ResultSet rs;
    try{Class.forName("oracle.jdbc.driver.OracleDriver"); 
} catch(ClassNotFoundException e){out.print("暂时无法访问");}
    try {
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle", "C##ROOT", "root");
     sql=con.createStatement();
     String condition=null;
     condition="SELECT newtitle,newstext,newsfrom,addTime FROM tb_news";
     rs=sql.executeQuery(condition);
     
    while(rs.next()) //输出查询结果
     { 
      
     out.print("<div align=center>新闻题目: "+rs.getString(1)+"</div>");
     
      out.println("<br/>");
      out.println("<div align=center>新闻内容:"+rs.getString(2)+"</div>");
     
      out.println("<div align=center>新闻来源:"+rs.getString(3)+"</div>");
      
     out.println("<div align=center>新闻时间:"+rs.getString(4)+"</div>");  
   
       
     }
   
     con.close();
     
    
      
     }
   catch(SQLException e1) {out.print("无法查询记录");}
 %>

