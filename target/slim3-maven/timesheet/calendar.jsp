<%@page pageEncoding="UTF-8" isELIgnored="false" session="true"%>
<%@page import="java.util.Calendar"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>
<%@taglib prefix="calendar" uri="http://www.sacn.co.jp/tags/calendar"%>
<html>
<head>
<%@ include file="/common/header.jsp"%>
<script src="/js/custom/timesheet.js"></script>
</head>
<body>
<div class="container bg-info form-inline">
<h1 class="text-center text-primary">
	<span>勤務表システム</span>
</h1>
<div class="btn-toolbar" role="toolbar">
	<div class="btn-group btn-group-lg" role="group">
		<!-- 設定画面への遷移 -->
		<button class="btn btn-default" aria-label="Left Align" type="button" onclick="javascript:location.href='./setting.htm'">
			<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
		</button>
		<button class="btn btn-default" aria-label="Center Align" type="button" onclick="javascript:$('#logoutForm').submit();">
			<span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
		</button>
	</div>
	<div class="btn-group btn-group-lg pull-right" role="group">
		<button class="btn btn-default" aria-label="Right Align" type="button" onclick="javascript:location.href='./submit.htm'">
			<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
		</button>
		<button class="btn btn-default" aria-label="Center Align" type="button" onclick="javascript:location.href='./create.htm'">
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
		</button>
    </div>
</div>
</div>
<form class="form-horizontal">
<div class="container">
<% Calendar calendar = Calendar.getInstance(); %>
<calendar:Calendar year="<%=Integer.toString(calendar.get(Calendar.YEAR)) %>"
                   month="<%=Integer.toString(calendar.get(Calendar.MONTH) + 1) %>" />

</div>
</form>

<br/>
<div class="container">
<div class="panel panel-default">
	<div class="panel-heading">
		勤怠入力フォーム
	</div>
	<div class="panel-body">
	<form class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-2 control-label" for="InputSelect1">休 暇 等 ：</label>
		<div class="col-sm-10">
			<select class="form-control" id="InputSelect1">
				<option>--</option>
				<option>有休</option>
				<option>半休</option>
				<option>代休</option>
				<option>振休</option>
				<option>振出</option>
				<option>休出</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label" for="InputSelect2">出社時間：</label>
		<div class="col-sm-10">
			<select class="form-control" id="InputSelect2">
				<option>--</option>
				<option>08:00</option>
				<option>08:30</option>
				<option>09:00</option>
				<option>09:30</option>
				<option>10:00</option>
				<option>10:30</option>
				<option>11:00</option>
				<option>11:30</option>
				<option>12:00</option>
				<option>12:30</option>
				<option>13:00</option>
				<option>13:30</option>
				<option>14:00</option>
				<option>14:30</option>
				<option>15:00</option>
				<option>15:30</option>
				<option>16:00</option>
				<option>16:30</option>
				<option>17:00</option>
				<option>17:30</option>
				<option>18:00</option>
				<option>18:30</option>
				<option>19:00</option>
				<option>19:30</option>
				<option>20:00</option>
				<option>20:30</option>
				<option>21:00</option>
				<option>21:30</option>
				<option>22:00</option>
				<option>22:30</option>
				<option>23:00</option>
				<option>23:30</option>
				<option>00:00</option>
				<option>00:30</option>
				<option>01:00</option>
				<option>01:30</option>
				<option>02:00</option>
				<option>02:30</option>
				<option>03:00</option>
				<option>03:30</option>
				<option>04:00</option>
				<option>04:30</option>
				<option>05:00</option>
				<option>05:30</option>
				<option>06:00</option>
				<option>06:30</option>
				<option>07:00</option>
				<option>07:30</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label" for="InputSelect3">退社時間：</label>
		<div class="col-sm-10">
			<select class="form-control" id="InputSelect3">
				<option>--</option>
				<option>08:00</option>
				<option>08:30</option>
				<option>09:00</option>
				<option>09:30</option>
				<option>10:00</option>
				<option>10:30</option>
				<option>11:00</option>
				<option>11:30</option>
				<option>12:00</option>
				<option>12:30</option>
				<option>13:00</option>
				<option>13:30</option>
				<option>14:00</option>
				<option>14:30</option>
				<option>15:00</option>
				<option>15:30</option>
				<option>16:00</option>
				<option>16:30</option>
				<option>17:00</option>
				<option>17:30</option>
				<option>18:00</option>
				<option>18:30</option>
				<option>19:00</option>
				<option>19:30</option>
				<option>20:00</option>
				<option>20:30</option>
				<option>21:00</option>
				<option>21:30</option>
				<option>22:00</option>
				<option>22:30</option>
				<option>23:00</option>
				<option>23:30</option>
				<option>00:00</option>
				<option>00:30</option>
				<option>01:00</option>
				<option>01:30</option>
				<option>02:00</option>
				<option>02:30</option>
				<option>03:00</option>
				<option>03:30</option>
				<option>04:00</option>
				<option>04:30</option>
				<option>05:00</option>
				<option>05:30</option>
				<option>06:00</option>
				<option>06:30</option>
				<option>07:00</option>
				<option>07:30</option>
			</select>
		</div>
	</div>
	<div class="form-group form-group-lg">
		<label class="col-sm-2 control-label sr-only" for="InputText">行き先（常駐先）</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="InputText" placeholder="行き先（常駐先）欄">
		</div>
	</div>
	</form>
	</div>
	<div class="btn-group btn-group-justified" role="group">
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="javascript:confirm('入力した内容で登録しますか')">登録</button>
	</div>
  </div>
</div>
</div>
<form id="logoutForm" method="POST" action="/login/logout">
</form>
</body>
</html>
