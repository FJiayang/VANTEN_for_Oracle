<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>test</title>
<script src="js/ie-emulation-modes-warning.js"></script>
<link href="css/zzsc.css" type="text/css" rel="stylesheet">
<link href="css/bootstrap.css" type="text/css" rel="stylesheet">
<link href="css/patch.css" type="text/css" rel="stylesheet">
<link href="css/docs.min.css" type="text/css" rel="stylesheet">
<script src="js/jquery-1.3.2.js" type="text/javascript"></script>
<script src="js/bootstrap.js" type="text/javascript"></script>
<script src="js/h.js" type="text/javascript"></script>
<script src="js/docs.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		$(".subNav").click(function() {
			$(this).toggleClass("currentDd").siblings(".subNav").removeClass("currentDd")
			$(this).toggleClass("currentDt").siblings(".subNav").removeClass("currentDt")

			// 修改数字控制速度， slideUp(500)控制卷起速度
			$(this).next(".navContent").slideToggle(500).siblings(".navContent").slideUp(500);
		})
	})
</script>
<style type="text/css">
.placeholders {
	margin-bottom: 20px;
	text-align: center;
	margin-left: 15px;
}

.placeholders h4 {
	margin-bottom: 0;
}

.placeholder h4 {
	/* padding-left:20px; */
	
}

.placeholder img {
	display: inline-block;
	border-radius: 50%;
}
</style>
</head>
<body>
	<div class="col-lg-2 col-md-2 hidden-xs">
		<div class="row placeholders">
			<div class="placeholder">
				<img src="img/client1.jpg" width="100" height="100"
					class="img-responsive" alt="用户头像">
				<h4>
					<%
						out.println(user1);
					%>
				</h4>
				<!-- 已在top.jsp中声明，此处报错正常 -->
				<span class="text-muted"> <%
 	out.println(vipuser + " " + adminuser);
 %>
				</span>
				<!-- 已在top.jsp中声明，此处报错正常 -->
			</div>
		</div>
		<nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix">
      <ul class="nav bs-docs-sidenav">
        <li> <a href="#js-overview">概览</a>
          <ul class="nav">
            <li><a href="#js-individual-compiled">单个还是全部引入</a></li>
            <li><a href="#js-data-attrs">data 属性</a></li>
            <li><a href="#js-programmatic-api">编程方式的 API</a></li>
            <li><a href="#js-noconflict">避免命名空间冲突</a></li>
            <li><a href="#js-events">事件</a></li>
            <li><a href="#js-version-nums">Version numbers</a></li>
            <li><a href="#js-disabled">浏览器的 JavaScript 被禁用的情况</a></li>
            <li><a href="#callout-third-party-libs">第三方工具库</a></li>
          </ul>
        </li>
        <li><a href="#transitions">过渡效果</a></li>
        <li> <a href="#modals">模态框</a>
          <ul class="nav">
            <li><a href="#modals-examples">实例</a></li>
            <li><a href="#modals-sizes">Sizes</a></li>
            <li><a href="#modals-remove-animation">Remove animation</a></li>
            <li><a href="#modals-related-target">Varying content based on trigger button</a></li>
            <li><a href="#modals-usage">用法</a></li>
            <li><a href="#modals-options">参数</a></li>
            <li><a href="#modals-methods">方法</a></li>
            <li><a href="#modals-events">事件</a></li>
          </ul>
        </li>
        <li class="active"> <a href="#dropdowns">下拉菜单</a>
          <ul class="nav">
            <li><a href="#dropdowns-examples">实例</a></li>
            <li><a href="#dropdowns-usage">用法</a></li>
            <li><a href="#dropdowns-methods">方法</a></li>
            <li><a href="#dropdowns-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#scrollspy">滚动监听</a>
          <ul class="nav">
            <li><a href="#scrollspy-examples">实例</a></li>
            <li><a href="#scrollspy-usage">用法</a></li>
            <li><a href="#scrollspy-methods">方法</a></li>
            <li><a href="#scrollspy-options">参数</a></li>
            <li><a href="#scrollspy-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#tabs">标签页</a>
          <ul class="nav">
            <li><a href="#tabs-examples">实例</a></li>
            <li><a href="#tabs-usage">用法</a></li>
            <li><a href="#tabs-methods">方法</a></li>
            <li><a href="#tabs-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#tooltips">工具提示</a>
          <ul class="nav">
            <li><a href="#tooltips-examples">实例</a></li>
            <li><a href="#tooltips-usage">用法</a></li>
            <li><a href="#tooltips-options">参数</a></li>
            <li><a href="#tooltips-methods">方法</a></li>
            <li><a href="#tooltips-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#popovers">弹出框</a>
          <ul class="nav">
            <li><a href="#popovers-examples">实例</a></li>
            <li><a href="#popovers-usage">用法</a></li>
            <li><a href="#popovers-options">参数</a></li>
            <li><a href="#popovers-methods">方法</a></li>
            <li><a href="#popovers-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#alerts">警告框</a>
          <ul class="nav">
            <li><a href="#alerts-examples">警告框实例</a></li>
            <li><a href="#alerts-usage">用法</a></li>
            <li><a href="#alerts-methods">方法</a></li>
            <li><a href="#alerts-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#buttons">按钮</a>
          <ul class="nav">
            <li><a href="#buttons-stateful">Stateful</a></li>
            <li><a href="#buttons-single-toggle">Single toggle</a></li>
            <li><a href="#buttons-checkbox-radio">Checkbox / Radio</a></li>
            <li><a href="#buttons-methods">方法</a></li>
          </ul>
        </li>
        <li> <a href="#collapse">Collapse</a>
          <ul class="nav">
            <li><a href="#collapse-example">实例</a></li>
            <li><a href="#collapse-example-accordion">Accordion example</a></li>
            <li><a href="#collapse-usage">用法</a></li>
            <li><a href="#collapse-options">参数</a></li>
            <li><a href="#collapse-methods">方法</a></li>
            <li><a href="#collapse-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#carousel">Carousel</a>
          <ul class="nav">
            <li><a href="#carousel-examples">实例</a></li>
            <li><a href="#carousel-usage">用法</a></li>
            <li><a href="#carousel-options">参数</a></li>
            <li><a href="#carousel-methods">方法</a></li>
            <li><a href="#carousel-events">事件</a></li>
          </ul>
        </li>
        <li> <a href="#affix">Affix</a>
          <ul class="nav">
            <li><a href="#affix-examples">实例</a></li>
            <li><a href="#affix-usage">用法</a></li>
            <li><a href="#affix-options">参数</a></li>
            <li><a href="#affix-methods">方法</a></li>
            <li><a href="#affix-events">事件</a></li>
          </ul>
        </li>
      </ul>
      <a class="back-to-top" href="#top"> 返回顶部 </a> <a href="#" class="bs-docs-theme-toggle" role="button"> 主题预览 </a> </nav>
	</div>
	<script src="../js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="../js/bootstrap.js" type="text/javascript"></script>
</body>
</html>