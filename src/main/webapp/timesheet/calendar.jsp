<%@page pageEncoding="UTF-8" isELIgnored="false" session="false"%>
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
<div class="container-fluid bg-info form-inline">
<h1 class="text-center text-primary">
<div class="btn-toolbar" role="toolbar">
	<div class="btn-group btn-group-lg" role="group">
		<!-- 設定画面への遷移 -->
		<button class="btn btn-default" aria-label="Left Align" type="button" onclick="javascript:location.href='./setting.htm'">
			<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
		</button>
		<button class="btn btn-default" aria-label="Center Align" type="button" onclick="javascript:location.href='./login.htm'">
			<span class="glyphicon glyphicon-log-out" aria-hidden="true"></span>
		</button>
	</div>
	<span>勤務表システム</span>
	<div class="btn-group btn-group-lg pull-right" role="group">
		<button class="btn btn-default" aria-label="Right Align" type="button" onclick="javascript:location.href='./submit.htm'">
			<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
		</button>
		<button class="btn btn-default" aria-label="Center Align" type="button" onclick="javascript:location.href='./create.htm'">
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
		</button>
    </div>
</div>
</h1>
</div>
<form class="form-horizontal">
<div class="container-fluid">
<% Calendar calendar = Calendar.getInstance(); %>
<calendar:Calendar year="<%=Integer.toString(calendar.get(Calendar.YEAR)) %>"
                   month="<%=Integer.toString(calendar.get(Calendar.MONTH) + 1) %>" />

</div>
</form>

<form class="form-horizontal">
	<div class="form-group form-group-lg">
		<h4 style="display:inline-flex" for="InputSelect1">休 暇 等 ：</h4>
		<div class="col-sm-2" style="display:inline-flex">
		<select class="form-control" id="InputSelect1">
			<option>--</option>
			<option>有休</option>
			<option>半休</option>
			<option>代休</option>
		</select>
		</div>
	</div>
	<div class="form-group form-group-lg">
		<h4 style="display:inline-flex">出社時間：</h4>
			<div class="col-sm-2 form-inline" style="display:inline-flex">
			<select class="form-control" id="InputSelect2">
				<option>--</option>
				<option>08</option>
				<option>09</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
				<option>13</option>
				<option>14</option>
				<option>15</option>
				<option>16</option>
				<option>17</option>
				<option>18</option>
				<option>19</option>
				<option>20</option>
				<option>21</option>
				<option>22</option>
				<option>23</option>
				<option>00</option>
				<option>01</option>
				<option>02</option>
				<option>03</option>
				<option>04</option>
				<option>05</option>
				<option>06</option>
				<option>07</option>
			</select>
			<h4>：</h4>
			<select class="form-control" id="InputSelect3">
				<option>--</option>
				<option>00</option>
				<option>30</option>
			</select>
			</div>
	</div>
	<div class="form-group form-group-lg">
		<h4 style="display:inline-flex">退社時間：</h4>
			<div class="col-sm-2 form-inline" style="display:inline-flex">
			<select class="form-control" id="InputSelect2">
				<option>--</option>
				<option>08</option>
				<option>09</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
				<option>13</option>
				<option>14</option>
				<option>15</option>
				<option>16</option>
				<option>17</option>
				<option>18</option>
			</select>
			<h4>：</h4>
			<select class="form-control" id="InputSelect3">
				<option>--</option>
				<option>00</option>
				<option>30</option>
			</select>
			</div>	
	</div>
	<div class="form-group form-group-lg">
		<label class="col-sm-2 control-label sr-only" for="InputText">行き先（常駐先）</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="InputText" placeholder="行き先（常駐先）欄">
		</div>
	</div>
	<div class="btn-group btn-group-justified" role="group">
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-primary btn-lg btn-block" onclick="javascript:confirm('入力した内容で登録しますか')">登録</button>
	</div>
  </div>
</form>
</div>
</body>
</html>
