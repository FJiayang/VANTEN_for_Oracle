<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>聊天室</title>
<link href="../css/chart_style.css" rel="stylesheet">
<link href="../css/bootstrap.css" rel="stylesheet">
<script language="javascript" src="../js/AjaxRequest.js"></script>
<link rel="stylesheet" href="../css/emoji.css">
<script language="javascript">
	window.setInterval("showContent();", 1000);
	window.setInterval("showOnline();", 10000);
	//此处需要加&nocache="+new Date().getTime()，否则将出现在线人员列表不更新的情况
	function showOnline() {
		var loader = new net.AjaxRequest("online.jsp?nocache=" + new Date().getTime(), deal_online, onerror, "GET");
	}
	function showContent() {
		var loader1 = new net.AjaxRequest("content.jsp?nocache=" + new Date().getTime(), deal_content, onerror, "GET");
	}
	function onerror() {
		alert("很抱歉，服务器出现错误，当前窗口将关闭！");
		window.opener = null;
		window.close();
	}
	function deal_online() {
		online.innerHTML = this.req.responseText;
	}
	function deal_content() {
		content.innerHTML = this.req.responseText;
	}
	function GetFocus()
	{
	    document.all.message.focus();
	}
	
</script>
<script language="javascript">
	function check() { //验证聊天信息
		if (form1.tempuser.value == "") {
			alert("请选择聊天对象！");return false;
		}
		if (form1.message.value == "") {
			alert("发送信息不可以为空！");form1.message.focus();return false;
		}
	}
	function Exit() {
		window.location.href = "leave.jsp";
	}
</script>
<script language="javascript">
function set(selectPerson){	//自动添加聊天对象
	if(selectPerson!="<%=session.getAttribute("actualuser")%>"){
		form1.tempuser.value=selectPerson;
	}else{
		alert("请重新选择聊天对象！");
	}
}
/*function hello(){ 

application.invalidate(); 
response.sendRedirect("index.jsp");7
alert("g");
} 
//重复执行某个方法 
var t1 = window.setInterval("hello()",1000); 
var t2 = window.setInterval("hello()",3000); 
//去掉定时器的方法 
window.clearInterval(t1); */
</script>
<script language="jscript">
	window.onbeforeunload = function() { //当用户单击浏览器中的“关闭”按钮时，执行退出操作
		if (event.clientY < 0 && event.clientX > document.body.scrollmax - width) {
			Exit(); //执行退出操作
		}
	}
</script>
</head>
<body onLoad="showContent();showOnline();set('所有人');GetFocus();"> 
	<div class="container">
		<div class="row">
			<div class="chatTop">
			<center><span class="chatTopspan">VANTEN</span></center>
			</div>
		</div>

		<div class="row">
		<div class="chat1"><div id="content" class="chat">聊天内容</div></div>
			<div id="online" class="list">在线人员列表</div>
			
		</div>

		<div class="row">
			<div class="chatsent">
				<form role="form" action="send.jsp " name="form1" method="post"
					onSubmit="return check()">
					<center>
					<div class="chatsentinput">
						<div class="word_white" style="display: inline;">[<%=session.getAttribute("actualuser")%>]</div>
					 <input name="tempuser" class="tempuser" type="text" value="" size="20" readonly="readonly">
						<input id="message" name="message" type="text" class="message">	
							
						<div class="chatsent2">
						<table class="chatsenttable">
							<tr>
								<td><img src="arclist/1.gif" class="emotion" style="margin-left: 30px;"><br></td>
							</tr>
							<!-- <tr>
								<td>表情 <select name="select"
													class="wenbenkuang">
													<option value="无表情的">无表情的</option>
													<option value="微笑着" selected>微笑着</option>
													<option value="笑呵呵地">笑呵呵地</option>
													<option value="热情的">热情的</option>
													<option value="温柔的">温柔的</option>
													<option value="红着脸">红着脸</option>
													<option value="幸福的">幸福的</option>
													<option value="嘟着嘴">嘟着嘴</option>
													<option value="热泪盈眶的">热泪盈眶的</option>
													<option value="依依不舍的">依依不舍的</option>
													<option value="得意的">得意的</option>
													<option value="神秘兮兮的">神秘兮兮的</option>
													<option value="恶狠狠的">恶狠狠的</option>
													<option value="大声的">大声的</option>
													<option value="生气的">生气的</option>
													<option value="幸灾乐祸的">幸灾乐祸的</option>
													<option value="同情的">同情的</option>
													<option value="遗憾的">遗憾的</option>
													<option value="正义凛然的">正义凛然的</option>
													<option value="严肃的">严肃的</option>
													<option value="慢条斯理的">慢条斯理的</option>
													<option value="无精打采的">无精打采的</option>
												</select> </td>
							</tr>
							
							<tr>
								<td>说： 
												字体颜色： <select name="color" size="1" class="wenbenkuang"
													id="select">
													<option selected>默认颜色</option>
													<option style="color:#FF0000" value="FF0000">红色热情</option>
													<option style="color:#0000FF" value="0000ff">蓝色开朗</option>
													<option style="color:#ff00ff" value="ff00ff">桃色浪漫</option>
													<option style="color:#009900" value="009900">绿色青春</option>
													<option style="color:#009999" value="009999">青色清爽</option>
													<option style="color:#990099" value="990099">紫色拘谨</option>
													<option style="color:#990000" value="990000">暗夜兴奋</option>
													<option style="color:#000099" value="000099">深蓝忧郁</option>
													<option style="color:#999900" value="999900">卡其制服</option>
													<option style="color:#ff9900" value="ff9900">镏金岁月</option>
													<option style="color:#0099ff" value="0099ff">湖波荡漾</option>
													<option style="color:#9900ff" value="9900ff">发亮蓝紫</option>
													<option style="color:#ff0099" value="ff0099">爱的暗示</option>
													<option style="color:#006600" value="006600">墨绿深沉</option>
													<option style="color:#999999" value="999999">烟雨蒙蒙</option>
												</select></td>
							</tr>-->
							
							<tr>
								<td><input name="Submit2" type="submit" class="btn btn-default send"
													value="发送">
								</td>
							</tr>
						</table>
						
						</div>
						
					</div>
					</center>
					<input name="button_exit" type="button" class="btn btn-default btn_orange"
						value="退出聊天室" onClick="Exit()">



				</form>
			</div>
		</div>


	</div>
</body>
<script src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.qqFace.js"></script>
<script type="text/javascript">

$(function(){

	$('.emotion').qqFace({

		id : 'facebox', 

		assign:'message', 

		path:'arclist/'	//表情存放的路径

	});

	$(".send").click(function(){

		var str = $("#message").val();

		$("#show").html(replace_em(str));

	});

});

//查看结果

function replace_em(str){

	str = str.replace(/\</g,'&lt;');

	str = str.replace(/\>/g,'&gt;');

	str = str.replace(/\n/g,'<br/>');

	str = str.replace(/\[em_([0-9]*)\]/g,'<img src="arclist/$1.gif" border="0" />');

	return str;

}

</script>
</html>