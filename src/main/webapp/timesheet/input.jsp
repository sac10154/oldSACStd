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
	<span>勤務表システム</span>
	<div class="btn-group btn-group-lg pull-right" role="group">
		<button class="btn btn-link" aria-label="Center Align" onclick="javascript:history.back();" type="button">
			<span aria-hidden="true">戻る</span>
		</button>
    </div>
</div>
</h1>
</div>
<form class="form-horizontal">
<div class="container-fluid">
<div class="calendar-link">
<a href="#">
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true">
</span>
</a>
</div>


</div>
<div class="well">
<div class="container bg-default">
</form>
<form class="form-horizontal">
	<div class="form-group form-group-lg">
	<div class="container">
	  <table class="table">
	    <thead></thead>
	    <tbody>
	      <tr>
	        <td><div class="radio-inline"><input type="radio" name="AllOrOne" value="one" id="InputSelect00" checked><label for="InputSelect00">日付</label></div></td>
	        <td><div class="radio-inline"><input type="radio" name="AllOrOne" value="all" id="InputSelect01"><label for="InputSelect01">一括</label></div></td>
	      </tr>
	      <tr>
	        <td><input type="month" class="form-control" value="" id="InputSelect08"></input></td>
	        <td><input type="date" class="form-control" value="" id="InputSelect09"></input></td>
	      </tr>
	    </tbody>
	  </table>
	</div>
	</div>
	<div class="form-group form-group-lg">
	  <label class="col-sm-2 control-label" for="InputSelect1">休暇等：</label>
	  <div class="col-sm-2">
	  <select class="form-control" id="InputSelect1">
	    <option>--</option>
	    <option>有休</option>
	    <option>半休</option>
	    <option>代休</option>
	  </select>
	  </div>
	</div>
	<div class="form-group form-group-lg">
	  <label class="col-sm-2 control-label">出社時間：</label>
	    <div class="col-sm-2 form-inline">
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
	    <label>:</label>
	    <select class="form-control" id="InputSelect3">
	      <option>--</option>
	      <option>00</option>
	      <option>30</option>
	    </select>
	    </div>
	</div>
	<div class="form-group form-group-lg">
	  <label class="col-sm-2 control-label">退社時間：</label>
	    <div class="col-sm-2 form-inline">
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
	    <label>:</label>
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
	  <button type="button" class="btn btn-primary btn-lg btn-block" onclick="if (doSubmit()) {javascript:location.href='./default.htm'}">登録</button>
	</div>
  </div>
</form>
</div>
</body>

</html>
