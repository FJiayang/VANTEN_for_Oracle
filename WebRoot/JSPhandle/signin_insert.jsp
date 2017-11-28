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
   String users=request.getParameter("inputUser");  
   String pass=request.getParameter("Password2"); 
   String email=request.getParameter("Email");
   String PhoneNumber=request.getParameter("PhoneNumber"); 
   %>  
   <%   
    String driver = "oracle.jdbc.driver.OracleDriver";    
    String url="jdbc:oracle:thin:@localhost:1521:oracle";    
    String use = "C##ROOT";     
    String password = "root";    
    Class.forName(driver).newInstance();  
    try{  
    Connection conn= DriverManager.getConnection(url,use,password);    
    PreparedStatement sql =conn.prepareStatement("insert into tb_user(userName,password,Email,phoneNum)values(?,?,?,?)");  
    sql.setString(1,users);  
    sql.setString(2,pass);  
    sql.setString(3,email);
    sql.setString(4,PhoneNumber); 
    int rtn=sql.executeUpdate();  
    String commit="commit";
    sql.executeUpdate(commit);
    sql.close();  
    conn.close();  
    } catch (Exception ex) {
			ex.printStackTrace();
		}
    %>  
    <% response.setHeader("refresh","0;url=../signin_show.jsp");%>  
  </body>  
</html>  