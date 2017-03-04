<%@page pageEncoding="UTF-8" isELIgnored="false" session="true"%>
<%@page import="java.util.Calendar"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="f" uri="http://www.slim3.org/functions"%>
<%@taglib prefix="calendar" uri="http://www.sacn.co.jp/tags/calendar"%>
<%
String type = (String)request.getAttribute ( "type" );
String arrivalTime = (String)request.getAttribute ( "arrivalTime" );
String quittingTime = (String)request.getAttribute ( "quittingTime" );
%>

<html>
<head>
<%@ include file="/common/header.jsp"%>
<script src="/js/custom/caledar.js"></script>
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
<calendar:Calendar year="${year}"
                   month="${month}"
                   day="${day}"/>
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
			<select class="form-control" id="selType" name="selType">
				<option value="">--</option>
				<option value="1" <%="1".equals(type)? " selected=\"selected\"":""%>>有休</option>
				<option value="2" <%="2".equals(type)? " selected=\"selected\"":""%>>半休</option>
				<option value="3" <%="3".equals(type)? " selected=\"selected\"":""%>>代休</option>
				<option value="4" <%="4".equals(type)? " selected=\"selected\"":""%>>振休</option>
				<option value="5" <%="5".equals(type)? " selected=\"selected\"":""%>>振出</option>
				<option value="6" <%="6".equals(type)? " selected=\"selected\"":""%>>休出</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label" for="InputSelect2">出社時間：</label>
		<div class="col-sm-10">
			<select class="form-control" id="selArrivalTime" name="selArrivalTime">
				<option value="">--</option>
				<option value="0800" <%="0800".equals(arrivalTime)? " selected=\"selected\"":""%>>08:00</option>
				<option value="0830" <%="0830".equals(arrivalTime)? " selected=\"selected\"":""%>>08:30</option>
				<option value="0900" <%="0900".equals(arrivalTime)? " selected=\"selected\"":""%>>09:00</option>
				<option value="0930" <%="0930".equals(arrivalTime)? " selected=\"selected\"":""%>>09:30</option>
				<option value="1000" <%="1000".equals(arrivalTime)? " selected=\"selected\"":""%>>10:00</option>
				<option value="1030" <%="1030".equals(arrivalTime)? " selected=\"selected\"":""%>>10:30</option>
				<option value="1100" <%="1100".equals(arrivalTime)? " selected=\"selected\"":""%>>11:00</option>
				<option value="1130" <%="1130".equals(arrivalTime)? " selected=\"selected\"":""%>>11:30</option>
				<option value="1200" <%="1200".equals(arrivalTime)? " selected=\"selected\"":""%>>12:00</option>
				<option value="1230" <%="1230".equals(arrivalTime)? " selected=\"selected\"":""%>>12:30</option>
				<option value="1300" <%="1300".equals(arrivalTime)? " selected=\"selected\"":""%>>13:00</option>
				<option value="1330" <%="1330".equals(arrivalTime)? " selected=\"selected\"":""%>>13:30</option>
				<option value="1400" <%="1400".equals(arrivalTime)? " selected=\"selected\"":""%>>14:00</option>
				<option value="1430" <%="1430".equals(arrivalTime)? " selected=\"selected\"":""%>>14:30</option>
				<option value="1500" <%="1500".equals(arrivalTime)? " selected=\"selected\"":""%>>15:00</option>
				<option value="1530" <%="1530".equals(arrivalTime)? " selected=\"selected\"":""%>>15:30</option>
				<option value="1600" <%="1600".equals(arrivalTime)? " selected=\"selected\"":""%>>16:00</option>
				<option value="1630" <%="1630".equals(arrivalTime)? " selected=\"selected\"":""%>>16:30</option>
				<option value="1700" <%="1700".equals(arrivalTime)? " selected=\"selected\"":""%>>17:00</option>
				<option value="1730" <%="1730".equals(arrivalTime)? " selected=\"selected\"":""%>>17:30</option>
				<option value="1800" <%="1800".equals(arrivalTime)? " selected=\"selected\"":""%>>18:00</option>
				<option value="1830" <%="1830".equals(arrivalTime)? " selected=\"selected\"":""%>>18:30</option>
				<option value="1900" <%="1900".equals(arrivalTime)? " selected=\"selected\"":""%>>19:00</option>
				<option value="1930" <%="1930".equals(arrivalTime)? " selected=\"selected\"":""%>>19:30</option>
				<option value="2000" <%="2000".equals(arrivalTime)? " selected=\"selected\"":""%>>20:00</option>
				<option value="2030" <%="2030".equals(arrivalTime)? " selected=\"selected\"":""%>>20:30</option>
				<option value="2100" <%="2100".equals(arrivalTime)? " selected=\"selected\"":""%>>21:00</option>
				<option value="2130" <%="2130".equals(arrivalTime)? " selected=\"selected\"":""%>>21:30</option>
				<option value="2200" <%="2200".equals(arrivalTime)? " selected=\"selected\"":""%>>22:00</option>
				<option value="2230" <%="2230".equals(arrivalTime)? " selected=\"selected\"":""%>>22:30</option>
				<option value="2300" <%="2300".equals(arrivalTime)? " selected=\"selected\"":""%>>23:00</option>
				<option value="2330" <%="2330".equals(arrivalTime)? " selected=\"selected\"":""%>>23:30</option>
				<option value="0000" <%="0000".equals(arrivalTime)? " selected=\"selected\"":""%>>00:00</option>
				<option value="0030" <%="0030".equals(arrivalTime)? " selected=\"selected\"":""%>>00:30</option>
				<option value="0100" <%="0100".equals(arrivalTime)? " selected=\"selected\"":""%>>01:00</option>
				<option value="0130" <%="0130".equals(arrivalTime)? " selected=\"selected\"":""%>>01:30</option>
				<option value="0200" <%="0200".equals(arrivalTime)? " selected=\"selected\"":""%>>02:00</option>
				<option value="0230" <%="0230".equals(arrivalTime)? " selected=\"selected\"":""%>>02:30</option>
				<option value="0300" <%="0300".equals(arrivalTime)? " selected=\"selected\"":""%>>03:00</option>
				<option value="0330" <%="0330".equals(arrivalTime)? " selected=\"selected\"":""%>>03:30</option>
				<option value="0400" <%="0400".equals(arrivalTime)? " selected=\"selected\"":""%>>04:00</option>
				<option value="0430" <%="0430".equals(arrivalTime)? " selected=\"selected\"":""%>>04:30</option>
				<option value="0500" <%="0500".equals(arrivalTime)? " selected=\"selected\"":""%>>05:00</option>
				<option value="0530" <%="0530".equals(arrivalTime)? " selected=\"selected\"":""%>>05:30</option>
				<option value="0600" <%="0600".equals(arrivalTime)? " selected=\"selected\"":""%>>06:00</option>
				<option value="0630" <%="0630".equals(arrivalTime)? " selected=\"selected\"":""%>>06:30</option>
				<option value="0700" <%="0700".equals(arrivalTime)? " selected=\"selected\"":""%>>07:00</option>
				<option value="0730" <%="0730".equals(arrivalTime)? " selected=\"selected\"":""%>>07:30</option>
			</select>
		</div>
	</div>
	<div class="form-group">
		<label class="col-sm-2 control-label" for="InputSelect3">退社時間：</label>
		<div class="col-sm-10">
			<select class="form-control" id="selQuittingTime" name="selQuittingTime">
				<option value="">--</option>
				<option value="0800" <%="0800".equals(quittingTime)? " selected=\"selected\"":""%>>08:00</option>
				<option value="0830" <%="0830".equals(quittingTime)? " selected=\"selected\"":""%>>08:30</option>
				<option value="0900" <%="0900".equals(quittingTime)? " selected=\"selected\"":""%>>09:00</option>
				<option value="0930" <%="0930".equals(quittingTime)? " selected=\"selected\"":""%>>09:30</option>
				<option value="1000" <%="1000".equals(quittingTime)? " selected=\"selected\"":""%>>10:00</option>
				<option value="1030" <%="1030".equals(quittingTime)? " selected=\"selected\"":""%>>10:30</option>
				<option value="1100" <%="1100".equals(quittingTime)? " selected=\"selected\"":""%>>11:00</option>
				<option value="1130" <%="1130".equals(quittingTime)? " selected=\"selected\"":""%>>11:30</option>
				<option value="1200" <%="1200".equals(quittingTime)? " selected=\"selected\"":""%>>12:00</option>
				<option value="1230" <%="1230".equals(quittingTime)? " selected=\"selected\"":""%>>12:30</option>
				<option value="1300" <%="1300".equals(quittingTime)? " selected=\"selected\"":""%>>13:00</option>
				<option value="1330" <%="1330".equals(quittingTime)? " selected=\"selected\"":""%>>13:30</option>
				<option value="1400" <%="1400".equals(quittingTime)? " selected=\"selected\"":""%>>14:00</option>
				<option value="1430" <%="1430".equals(quittingTime)? " selected=\"selected\"":""%>>14:30</option>
				<option value="1500" <%="1500".equals(quittingTime)? " selected=\"selected\"":""%>>15:00</option>
				<option value="1530" <%="1530".equals(quittingTime)? " selected=\"selected\"":""%>>15:30</option>
				<option value="1600" <%="1600".equals(quittingTime)? " selected=\"selected\"":""%>>16:00</option>
				<option value="1630" <%="1630".equals(quittingTime)? " selected=\"selected\"":""%>>16:30</option>
				<option value="1700" <%="1700".equals(quittingTime)? " selected=\"selected\"":""%>>17:00</option>
				<option value="1730" <%="1730".equals(quittingTime)? " selected=\"selected\"":""%>>17:30</option>
				<option value="1800" <%="1800".equals(quittingTime)? " selected=\"selected\"":""%>>18:00</option>
				<option value="1830" <%="1830".equals(quittingTime)? " selected=\"selected\"":""%>>18:30</option>
				<option value="1900" <%="1900".equals(quittingTime)? " selected=\"selected\"":""%>>19:00</option>
				<option value="1930" <%="1930".equals(quittingTime)? " selected=\"selected\"":""%>>19:30</option>
				<option value="2000" <%="2000".equals(quittingTime)? " selected=\"selected\"":""%>>20:00</option>
				<option value="2030" <%="2030".equals(quittingTime)? " selected=\"selected\"":""%>>20:30</option>
				<option value="2100" <%="2100".equals(quittingTime)? " selected=\"selected\"":""%>>21:00</option>
				<option value="2130" <%="2130".equals(quittingTime)? " selected=\"selected\"":""%>>21:30</option>
				<option value="2200" <%="2200".equals(quittingTime)? " selected=\"selected\"":""%>>22:00</option>
				<option value="2230" <%="2230".equals(quittingTime)? " selected=\"selected\"":""%>>22:30</option>
				<option value="2300" <%="2300".equals(quittingTime)? " selected=\"selected\"":""%>>23:00</option>
				<option value="2330" <%="2330".equals(quittingTime)? " selected=\"selected\"":""%>>23:30</option>
				<option value="0000" <%="0000".equals(quittingTime)? " selected=\"selected\"":""%>>00:00</option>
				<option value="0030" <%="0030".equals(quittingTime)? " selected=\"selected\"":""%>>00:30</option>
				<option value="0100" <%="0100".equals(quittingTime)? " selected=\"selected\"":""%>>01:00</option>
				<option value="0130" <%="0130".equals(quittingTime)? " selected=\"selected\"":""%>>01:30</option>
				<option value="0200" <%="0200".equals(quittingTime)? " selected=\"selected\"":""%>>02:00</option>
				<option value="0230" <%="0230".equals(quittingTime)? " selected=\"selected\"":""%>>02:30</option>
				<option value="0300" <%="0300".equals(quittingTime)? " selected=\"selected\"":""%>>03:00</option>
				<option value="0330" <%="0330".equals(quittingTime)? " selected=\"selected\"":""%>>03:30</option>
				<option value="0400" <%="0400".equals(quittingTime)? " selected=\"selected\"":""%>>04:00</option>
				<option value="0430" <%="0430".equals(quittingTime)? " selected=\"selected\"":""%>>04:30</option>
				<option value="0500" <%="0500".equals(quittingTime)? " selected=\"selected\"":""%>>05:00</option>
				<option value="0530" <%="0530".equals(quittingTime)? " selected=\"selected\"":""%>>05:30</option>
				<option value="0600" <%="0600".equals(quittingTime)? " selected=\"selected\"":""%>>06:00</option>
				<option value="0630" <%="0630".equals(quittingTime)? " selected=\"selected\"":""%>>06:30</option>
				<option value="0700" <%="0700".equals(quittingTime)? " selected=\"selected\"":""%>>07:00</option>
				<option value="0730" <%="0730".equals(quittingTime)? " selected=\"selected\"":""%>>07:30</option>
			</select>
		</div>
	</div>
	<div class="form-group form-group-lg">
		<label class="col-sm-2 control-label sr-only" for="InputText">行き先（常駐先）</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="InputMemo" name="InputMemo" placeholder="行き先（常駐先）欄" value="${memo}">
		</div>
	</div>
	</form>
	</div>
	<div class="btn-group btn-group-justified" role="group">
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="registAttendance();">登録</button>
	</div>
  </div>
</div>
</div>
<form id="logoutForm" method="POST" action="/login/logout">
</form>
<form id="calendarForm" method="POST" action="/timesheet/">
<input type="hidden" name="yy" id="yy" value="${year}" />
<input type="hidden" name="mm" id="mm" value="${month}" />
<input type="hidden" name="dd" id="dd" value="${day}" />
</form>
<form id="registAttendanceForm" method="POST" action="/timesheet/RegistAttendance">
<input type="hidden" name="userid" id="userid" value="${userid}" />
<input type="hidden" name="ymd" id="ymd" value="${year}${month}${day}" />
<input type="hidden" name="arrivalTime" id="arrivalTime" value="${arrivalTime}" />
<input type="hidden" name="quittingTime" id="quittingTime" value="${quittingTime}" />
<input type="hidden" name="type" id="type" value="${type}" />
<input type="hidden" name="memo" id="memo" value="${memo}" />
<input type="hidden" name="yy" id="yy" value="${year}" />
<input type="hidden" name="mm" id="mm" value="${month}" />
<input type="hidden" name="dd" id="dd" value="${day}" />
</form>
</body>
</html>
