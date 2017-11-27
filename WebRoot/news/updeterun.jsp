<%@ page contentType="text/html;charset=UTf-8" %>
<%@ page import="java.sql.*" %>
<%--<%! //处理字符串的方法：
  public String codeString(String s)
    { String str=s;
       try{
           str=new String(s.getBytes("ISO8859-1"),"UTF-8");   
           return str;
         } catch(Exception e) { return str; }
    }
--%>
<HTML>

<BODY>
  <% 
  request.setCharacterEncoding("utf-8");
    String k1=request.getParameter("t1"); //if(k1==null){k1="";} k1=codeString(k1);
   String k2=request.getParameter("t2"); //if(k1==null){k2="";} k1=codeString(k2);
    out.print(k1);
    out.print(k2);
    Connection con=null;
    Statement sql=null;
    ResultSet rs=null;
   try{Class.forName("oracle.jdbc.driver.OracleDriver");}catch(ClassNotFoundException event){out.print("暂时无法访问");}
    String condition=null;
    condition="UPDATE newstable1 SET newstext='"+k2+"' WHERE newsid='"+k1+"' ";
   try {
    con=DriverManager.getConnection("jdbc:mysql://localhost/news","root","123456");
    sql=con.createStatement();
    sql.executeUpdate(condition);
    out.print(k2);
    out.print("成功修改！</a>");
    response.setHeader("refresh","5;url=index.jsp");
    out.print("5秒后自动返回...");
    sql.close();
    con.close();
  } catch(SQLException event)
  { 
   out.print("修改失败");
   response.setHeader("refresh","5;url=index.jsp");
    out.print("5秒后自动返回...");} 
 %>
</BODY></HTML>