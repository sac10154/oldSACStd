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
<form class="form-horizontal" method="post" action="/login/login">
<div class="page-header">
<h3 class="text-center text-primary">ログイン</h3>
</div>
<div class="container">
	<c:if test="${errors.message != null}" >
		<div class="alert alert-danger" role="alert"><strong>error</strong>：　${errors.message}</div>
	</c:if>
	<c:if test="${errors.message == null}" >
		<div class="alert alert-info" role="alert"><strong>info</strong>：　お知らせ系メッセージ。</div>
	</c:if>
	<div class="input-group input-group-lg">
		<span class="input-group-addon">
		<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
		</span>
		<input type="text" class="form-control" id="inputuid3" name="userid" placeholder="ユーザーID" />
	</div>
	<div class="input-group input-group-lg">
		<span class="input-group-addon">
		<span class="glyphicon glyphicon-lock" aria-hidden="true"></span>
		</span>
		<input type="password" class="form-control" id="inputPassword3" name="password" placeholder="パスワード" />
	</div>

	<br/>
	<div class="btn-group btn-group-justified" role="group">
		<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="javascript:this.form.submit();">ログイン</button>
		</div>
	</div>
</div>
</form>
<br/>
<form id="userManageForm" class="form-horizontal" method="post" action="/login/userManage">
	<div class="btn-group btn-group-justified" role="group">
		<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick='javascript:this.form.submit();'>ユーザー登録</button>
		</div>
	</div>
</form>
</body>
</html>
