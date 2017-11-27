<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>检验注册页面</title>  
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
    <br>  
   <%  
   request.setCharacterEncoding("utf-8");  
   String users=(String)session.getAttribute("actualuser");  
   String pass=request.getParameter("inputPassword"); 
   %>  
   <%   
    String driver = "oracle.jdbc.driver.OracleDriver";    
    String url="jdbc:oracle:thin:@localhost:1521:oracle";    
    String use = "C##ROOT";     
    String password = "root";    
    Class.forName(driver).newInstance();  
    try{  
    Connection conn= DriverManager.getConnection(url,use,password);    
    PreparedStatement sql =conn.prepareStatement("update user set password=? where userName=?");   
    sql.setString(1,pass);
    sql.setString(2,users);   
    int rtn=sql.executeUpdate();  
    sql.close();  
    conn.close();  
    } catch (Exception ex) {
			ex.printStackTrace();
		}
    %>  
    <% 
    out.println("<script language=javascript>alert('修改成功！');window.location.href='index.html'</script>");
    %>  
  </body>  
</html>  