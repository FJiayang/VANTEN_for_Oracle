<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>发表帖子</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">
<link href="forum/css/plugins/iCheck/custom.css" rel="stylesheet">
<link href="forum/css/plugins/summernote/summernote.css"
	rel="stylesheet">
<link href="forum/css/plugins/summernote/summernote-bs3.css"
	rel="stylesheet">
<link href="forum/css/animate.css" rel="stylesheet">
<link href="forum/css/style.css" rel="stylesheet">

</head>

<body>
	<%
		if (session.getAttribute("actualuser") == null) {
			out.println(
					"<script language=javascript>alert('ç»å½è¶æ¶ (1440 ç§æªæ´»å¨)ææªç»å½ï¼è¯·éæ°ç»å½ã');window.location.href='index.html'</script>");
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
					>
					<div class="col-md-4 pull-right">
						<a class="btn btn-default pull-right createNew" href="index.jsp"
							role="button">回到首页</a>
					</div>
				</div>



				<form action="send.jsp" method="post">
					<div class="form-group">

						<label for="textTitle">主题</label> <input type="text"
							class="form-control" id="exampleInputEmail1" placeholder="ä¸»é¢">
						<!--<input type="text" class="form-control" name="subject"></div>-->
						<div class="form-group">

							<label for="textContent">内容</label>
							<textarea rows="10" cols="135" name="content"
								class="form-control" placeholder="åå®¹"></textarea>
							<input class="btn btn-default pull-right createNew" type="submit"
								value="åè¡¨å¸å­">
						</div>
					</div>
				</form>
			</div>
		</div><%@ include file="module/footer.jsp"%></div>










	<!-- Mainly scripts -->
	<script src="js/jquery-2.1.1.js"></script>
	<script src="js/bootstrap.min.js"></script>
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
