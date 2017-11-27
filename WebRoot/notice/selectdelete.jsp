<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{byte b[]=str.getBytes("ISO-8859-1");
           str=new String(b);   
           return str;
         } catch(Exception e) { return str; }
    }
%>
<HTML>
<BODY>
 <% 
    Connection con;
    Statement sql; 
    ResultSet rs;
    try{Class.forName("oracle.jdbc.driver.OracleDriver"); 
} catch(ClassNotFoundException e){out.print("暂时无法访问");}
    try {
     con=DriverManager.getConnection("jdbc:mysql://localhost/公告栏","root","123456");
     sql=con.createStatement();
     String condition=null;
     condition="SELECT * FROM 公告表1";
     rs=sql.executeQuery(condition);
     out.print("<Table Border align='center'>");
     out.print("<TR>");
      out.print("<TH width=100 >"+"公告编号");
     
      out.print("<TH width=100 >"+"公告内容");
      out.print("<TH width=100 >"+"公告作者");
      out.print("<TH width=100 >"+"公告时间");	  
     out.print("</TR>");
     while(rs.next()) //输出查询结果
     { out.print("<TR>");
        out.print("<TD height=100 vertical-align:top>"+rs.getString(1)+"</TD>"); 
        out.print("<TD height=100 vertical-align:top>"+rs.getString(2)+"</TD>"); 
        out.print("<TD height=100 vertical-align:top>"+rs.getString(3)+"</TD>");
        out.print("<TD height=100 vertical-align:top>"+rs.getString(4)+"</TD>");
        
       out.print("</TR>") ; 
     }
     out.print("</Table>"); 
 
      con.close();
     }
   catch(SQLException e1) {out.print("无法查询记录");}
 %>
<form 公告编号="form2" method="post" action="delete.jsp">
<div align='center'>
请输入你要删除的公告编号<input name="t1" size="11" type="text">
<input  type="submit" class="btcss2" value="提交删除" /><br />
</div>
</form>
</BODY>
</HTML>