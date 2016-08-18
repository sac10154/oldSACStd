<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>

<html>
<head>
<%@ include file="/common/header.jsp"%>
<script src="/js/custom/timesheet.js"></script>
</head>
	<body>
	<div class="container-fluid bg-info form-inline">
		<h1 class="text-center text-primary">
			<div class="btn-toolbar" role="toolbar">
				<div class="btn-group btn-group-lg" role="group">
				</div>
				<span>年間カレンダー</span>
				<div class="btn-group btn-group-lg pull-right" role="group">
					<button class="btn btn-link" aria-label="Center Align" onclick="javascript:history.back();" type="button">
						<span aria-hidden="true">戻る</span>
					</button>
				</div>
			</div>
		</h1>
	</div>

<form class="form-horizontal">



<!-- 遷移年ボタン＆表示年 -->
<nav>
	<ul class="pager pagination-sm">
		<li class="previous"><a href="#">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true">
			</span>
			<script type="text/javascript" align="center">
				myDate   = new Date();                                    // 今日の日付データ取得
				myYear   = myDate.getFullYear();                          // 年の取得
				myMonth  = myDate.getMonth();                             // 月を取得(0月～11月)
				document.write((myYear-1), "年");
			</script>
		</a></li>
		<li><B><SPAN style="font-size:200%">
		<script type="text/javascript">
			document.write((myYear), "年");
		</script></B></SPAN>
		</li>
		<li class="next"><a href="#">
			<script type="text/javascript">
				document.write((myYear+1), "年");
			</script>

			<!-- "＞"ボタン -->
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
			</span>
		</a></li>
	</ul>
</nav>
<!-- 月毎に選択できる -->

<div class="container">


<!-- 横に伸びる -->
<div class="btn-group btn-group-justified"  role="group">
	<a href="#" class="btn btn-default" role="button">１月</a>
	<a href="#" class="btn btn-default" role="button">２月</a>
	<a href="#" class="btn btn-default" role="button">３月</a>
</div>

<div class="btn-group btn-group-justified"  role="group">
	<a href="#" class="btn btn-default" role="button">４月</a>
	<a href="#" class="btn btn-default" role="button">５月</a>
	<a href="#" class="btn btn-default" role="button">６月</a>
</div>

<div class="btn-group btn-group-justified"  role="group">
	<a href="#" class="btn btn-default btn btn-primary" role="button">７月</a>
	<a href="#" class="btn btn-default" role="button">８月</a>
	<a href="#" class="btn btn-default" role="button">９月</a>
</div>

<div class="btn-group btn-group-justified"  role="group">
	<a href="#" class="btn btn-default" role="button">１０月</a>
	<a href="#" class="btn btn-default" role="button">１１月</a>
	<a href="#" class="btn btn-default" role="button">１２月</a>
</div>

</div>

</form>
	</body>
</html>
