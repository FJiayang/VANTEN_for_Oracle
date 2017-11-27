<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.util.*"%>
<%@ page import="com.wgh.UserForm"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	Vector myuser = (Vector) application.getAttribute("myuser");
%>
<link href="../css/bootstrap.css" rel="stylesheet">
<table class="table table-hover">
	<tr>
		<td height="32" align="center" class="word_white disabled">欢迎来到VANTEN聊天室！</td>
	</tr>
	<tr>
		<td height="23" align="center"><a href="#" class="word_white" onclick="set('所有人')" >所有人</a></td>
	</tr>
	<%
		for (int i = 0; i < myuser.size(); i++) {
			UserForm mylist = (UserForm) myuser.elementAt(i);
	%>
	<tr>
		<td height="23" align="center"  class="word_white"><a href="#"
			onclick="set('<%=mylist.username%>')" class="word_white"><%=mylist.username%></a></td>
	</tr>
	<%
		}
	%>
	<tr>
		<td height="30" align="center" color="#fff">当前在线[<font color="#fff"><%=myuser.size()%></font>]人
		</td>
	</tr>
</table>