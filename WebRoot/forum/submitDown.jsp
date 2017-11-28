<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%!
        public String codeString(String s)
      { String str=s;
   try{byte b[]=str.getBytes("ISO-8859-1");
       str=new String(b);   return str;
     } catch(Exception e) { return str; }
}
%>
<!DOCTYPE unspecified PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="1;url=../index.jsp">
<body >
<%    
           /* String referer=response.getHeader("Referer");  
           if(referer==null||!referer.startsWith("detail.jsp")){  
                 response.sendRedirect("../index.jsp");  
              return;
           }  */
                String k1 = request.getQueryString();//得到ID的值(id=数字).
                String re = "\\D+";                  //正则表达式
                String result = k1.replaceAll(re, ""); //找到不是数字的字符,用""替代  
     Connection con;Statement sql;  
     try{Class.forName("oracle.jdbc.driver.OracleDriver"); } catch(ClassNotFoundException e){out.print("驱动异常");}
     try{con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","C##ROOT","root");
     sql=con.createStatement();
     String text="update tb_send set col_flag = 0 where col_id = '"+result+"'";
     sql.executeUpdate(text);
     sql.close();
     con.close();
     out.print("成功取消置顶");
     }catch(SQLException event){out.print("取消置顶失败");}
     
%>
</body>
</html>