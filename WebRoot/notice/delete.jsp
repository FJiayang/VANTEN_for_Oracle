<%@ page contentType="text/html;charset=UTf-8" %>
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
<head>
<meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="2;url=index.jsp">
<title></title>
</head>

<BODY>
  <% 
    String k1=request.getParameter("t1"); if(k1==null){k1="";} k1=codeString(k1);
    Connection con=null;
    Statement sql=null;
    ResultSet rs=null;
   try{Class.forName("oracle.jdbc.driver.OracleDriver");}catch(ClassNotFoundException event){out.print("暂时无法访问");}
    String condition=null;
    out.print(k1);
    condition="DELETE from 公告表1  WHERE 公告编号 = '"+k1+"'";
   try {
    con=DriverManager.getConnection("jdbc:mysql://localhost/公告栏","root","123456");
    sql=con.createStatement();
    sql.executeUpdate(condition);
    out.print("成功删除！</a>");
    response.setHeader("refresh","5;url=index.jsp");
    out.print("5秒后自动返回...");
    sql.close();
    con.close();
  } catch(SQLException event)
  { 
   out.print("删除失败");
   response.setHeader("refresh","5;url=index.jsp");
    out.print("5秒后自动返回...");} 
 %>
</BODY></HTML>