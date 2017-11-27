<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<HTML>
<head>
</head>
<BODY>
  <% 
    request.setCharacterEncoding("utf-8");
    String k1=request.getParameter("a1"); //if(k1==null){k1="";} k1=codeString(k1);
    String k2=request.getParameter("a2"); //if(k2==null){k2="";} k2=codeString(k2);
    
    Connection con=null;
    Statement sql=null;
    ResultSet rs=null;
    String condition=null;
    condition="UPDATE 公告表1 SET 公告内容='"+k2+"' WHERE 公告编号='"+k1+"' ";
   try{Class.forName("oracle.jdbc.driver.OracleDriver");}catch(ClassNotFoundException event){out.print("驱动异常");}
   try {
    con=DriverManager.getConnection("jdbc:mysql://localhost/公告栏","root","123456");
    sql=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
    
    sql.executeUpdate(condition);
    con.close();
   
    out.print("公告修改成功！</a>");
    response.setHeader("refresh","5;url=index.jsp");
    out.print("5秒后自动返回...");

  } catch(SQLException event)
  {
    out.print("修改公告失败");
    response.setHeader("refresh","5;url=index.jsp");
    out.print("5秒后自动返回...");
    }
 %>
</BODY></HTML>