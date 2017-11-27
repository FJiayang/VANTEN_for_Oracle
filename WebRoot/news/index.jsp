<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("ISO-8859-1");
           str=new String(b);   return str;
         } catch(Exception e) { return str; }
    }
%>
 
<HTML>
<div align=center>
<b>新闻发布专栏</b>
</div>
<p></p>
<center>

<% 
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{Class.forName("oracle.jdbc.driver.OracleDriver"); }
     catch(ClassNotFoundException e){out.print("驱动异常");}
    try {
     con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","root","");
     sql=con.createStatement();
     String condition=null;
     condition="SELECT newsid,newtitle,addTime  FROM newstable";
     rs=sql.executeQuery(condition);
     //String k1=rs.getString(1);
     out.print("<table Border align='center' >");
     out.print("<tr>");
     out.print("<th>新闻标题</th>");
     out.print("<th>新闻时间</th>");
     out.print("<th>");
     out.print("</tr>");
     while(rs.next()) //输出查询结果
     { 
     
     out.print("<tr>");
     out.println("<TD><div align='center' class='zczi'>"+rs.getString(2)+"</div></TD>");
     out.print("<TD><div align='right' class='zczi'>"+rs.getString(3)+"</div></TD>");
     out.print("<TD><div align='center'><strong><a href='show.jsp?newsid="+rs.getString(1)+"' class='zczi'>查看</a></div></TD>"); 
     out.print("</tr>");
  
     }
      out.print("</table>");
     con.close();
     }
   catch(SQLException e1) {out.print("无法查询记录");} %></p>
 </p> 

<center>

<a href=add.html>增加新闻</a>
<a href=updatechoose.jsp>修改新闻</a>
<a href=deleteinput.jsp>删除新闻</a>
<BODY >
</BODY>
</HTML>