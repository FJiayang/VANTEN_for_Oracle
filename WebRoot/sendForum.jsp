<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>发表帖子</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="forum/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="forum/css/plugins/summernote/summernote.css"
	rel="stylesheet">
<link href="forum/css/plugins/summernote/summernote-bs3.css"
	rel="stylesheet">
<link href="forum/css/animate.css" rel="stylesheet">
<link href="forum/css/style.css" rel="stylesheet">
<script type="text/javascript">

	function validateSubject(field) {
		return (field == "") ? "主题不能为空--" : ""
	}
	function validateContent(field) {
		return (field == "") ? "内容不能为空--" : ""
	}
	function validate(form) {
		fail = validateSubject(form.subject.value)
		fail += validateContent(form.content.value)
		if (fail == "") return true;
		else {
			alert(fail);return false;
		} //判断表单的内容不能为空
	}
</script>
</head>

<body>
	<%
		if (session.getAttribute("actualuser") == null) {
			out.println(
					"<script language=javascript>alert('登录超时 (1440 秒未活动)或未登录，请重新登录。');window.location.href='index.html'</script>");
			return;
		}
		Object user0 = session.getAttribute("actualuser");
		/* out.println("欢迎"+user0);//输出当前session用户  */
	%>
	<%@ include file="module/top.jsp"%>
	<div class="container">
		<div class="row">
			<%@ include file="module/sidebar.jsp"%>
			<div class="col-lg-1 col-md-1 hidden-xs"></div>
			<div class="col-lg-9 col-md-9">
				<div class="row">
					<div class="col-md-8">
						<h2>发表帖子</h2>
					</div>
					<div class="col-md-2 pull-right">
						<a class="btn btn-default pull-right createNew" href="index.jsp"
							role="button">回到首页</a>
					</div>
				</div>
				<div class="row">
					<form action="forum/send.jsp" method="post" onsubmit="return validate(this)">
						<div class="form-group">

							<label for="textTitle">主题</label> <input type="text"
								class="form-control" id="exampleInputEmail1" name="subject"
								placeholder="主题">
							<div class="form-group">

								<label for="textContent">内容</label>
								<textarea rows="10" cols="135" name="content"
									class="form-control" placeholder="内容"></textarea>
								<input class="btn btn-default pull-right createNew"
									type="submit" value="发表帖子"> <input type="hidden"
									name="username" value="<%=user1%>" />
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<%@ include file="module/footer.jsp"%>
	</div>










	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.js" type="text/javascript"></script>
	<script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
	<script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

	<!-- Custom and plugin javascript -->
	<script src="js/inspinia.js"></script>
	<script src="js/plugins/pace/pace.min.js"></script>

	<!-- iCheck -->
	<script src="js/plugins/iCheck/icheck.min.js"></script>

	<!-- SUMMERNOTE -->
	<script src="js/plugins/summernote/summernote.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.i-checks').iCheck({
				checkboxClass : 'icheckbox_square-green',
				radioClass : 'iradio_square-green',
			});
	
	
			$('.summernote').summernote();
	
		});
		var edit = function() {
			$('.click2edit').summernote({
				focus : true
			});
		};
		var save = function() {
			var aHTML = $('.click2edit').code(); //save HTML If you need(aHTML: array).
			$('.click2edit').destroy();
		};
	</script>
</body>

</html>