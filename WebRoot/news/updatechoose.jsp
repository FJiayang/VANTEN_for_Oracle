<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<HTML>
<BODY>
 <% 
    
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{Class.forName("oracle.jdbc.driver.OracleDriver"); 
} catch(ClassNotFoundException e){out.print("暂时无法访问");}
    try {
     con=DriverManager.getConnection("jdbc:mysql://localhost/news","root","123456");
     sql=con.createStatement();
     String condition=null;
     condition="SELECT * FROM newstable1";
     rs=sql.executeQuery(condition);
     out.print("<Table Border align='center'>");
     out.print("<TR>");
      out.print("<TH width=100 >"+"新闻编号");
      out.print("<TH width=100 >"+"新闻题目");
      out.print("<TH width=100 >"+"新闻内容");
      out.print("<TH width=100 >"+"新闻作者");
      out.print("<TH width=100 >"+"新闻时间");	  
     out.print("</TR>");
     while(rs.next()) //输出查询结果
     { out.print("<TR>");
        out.print("<TD height=100 vertical-align:top>"+rs.getString(1)+"</TD>"); 
        out.print("<TD height=100 vertical-align:top>"+rs.getString(2)+"</TD>"); 
        out.print("<TD height=200 vertical-align:top>"+rs.getString(3)+"</TD>");
        out.print("<TD height=100 vertical-align:top>"+rs.getString(4)+"</TD>");
        out.print("<TD height=100 vertical-align:top>"+rs.getString(5)+"</TD>"); 
       out.print("</TR>") ; 
     }
     out.print("</Table>"); 
 
      con.close();
     }
   catch(SQLException e1) {out.print("无法查询记录");}
 %>
<form  method="post" action="updeterun.jsp">
请输入你要修改的新闻编号<br /><input name="t1" size="11" ><br><br/>
请输入你要修改的新闻内容：<br /><textarea name="t2" cols="40" rows="5" type="text" style="height: 255px; width: 727px; "></textarea>
<br /><br />
<input  type="submit" class="btcss2" value="提交修改" /><br />
</form>
</BODY>
</HTML>