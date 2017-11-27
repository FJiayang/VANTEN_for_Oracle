
$(document).ready(function() {
	$('#horizontalTab').easyResponsiveTabs({
		type : 'default', //Types: default, vertical, accordion           
		width : 'auto', //auto or any width like 600px
		fit : true, // 100% fit in a container
	});
});
function checkpwd() {
	'use strict';
	var p1 = document.getElementById("Password2").value; //获取密码框的值
	var p2 = document.getElementById("Password3").value; //获取重新输入的密码值
	if(p1==""){
		document.getElementById("msg").innerHTML = "请输入密码！"; //检测到密码为空，提醒输入//
	 document.register.Password2.focus();//焦点放到密码框
	 return false;//退出检测函数
	}//如果允许空密码，可取消这个条件

	if (p1 != p2) { //判断两次输入的值是否一致，不一致则显示错误信息
		document.getElementById("msg").innerHTML = "两次输入密码不一致，请重新输入"; //在div显示错误信息

		return false;
	} else {
		document.getElementById("msg").innerHTML = "";
	//密码一致，可以继续下一步操作 
	}
}
var code;
function createCode() {
	code = "";
	var codeLength = 6; //验证码的长度
	var checkCode = document.getElementById("checkCode");
	var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
		'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z',
		'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
	for (var i = 0; i < codeLength; i++) {
		var charNum = Math.floor(Math.random() * 52);
		code += codeChars[charNum];
	}
	if (checkCode) {
		checkCode.className = "code";
		checkCode.innerHTML = code;
	}
}
function validateCode() {
	var inputCode = document.getElementById("inputCode").value;
	if (inputCode.length <= 0) {
		document.getElementById("msg").innerHTML = "请输入验证码！";
	} else if (inputCode.toUpperCase() != code.toUpperCase()) {
		document.getElementById("msg").innerHTML = "验证码输入有误！";
		createCode();
	} else {
		alert("验证码正确！");
	}
}