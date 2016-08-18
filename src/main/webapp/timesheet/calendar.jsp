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
<div class="calendar-link">
<a href="#">
<!-- 年間カレンダーへの遷移 -->
<span class="glyphicon glyphicon-chevron-left" aria-hidden="true" onclick="javascript:location.href='./year_calendar.htm'">
<script type="text/javascript"><!--
	myDate    = new Date();                                    // 今日の日付データ取得
	myYear = myDate.getFullYear();                                 // 年の取得
	myMonth = myDate.getMonth();                               // 月を取得(0月～11月)
	document.write(myYear, "年", (myMonth+1), "月");
// --></script>
</span>
</a>
</div>

<script type="text/javascript"><!--
	// ****************
	//      下準備   
	// ****************
	myDate    = new Date();                                    // 今日の日付データ取得
	myWeekTbl = new Array("日","月","火","水","木","金","土");  // 曜日テーブル定義
	myMonthTbl= new Array(31,28,31,30,31,30,31,31,30,31,30,31);// 月テーブル定義
	myYear = myDate.getFullYear();                                 // 年の取得
	if (((myYear%4)==0 && (myYear%100)!=0) || (myYear%400)==0){ // うるう年だったら...
	   myMonthTbl[1] = 29;                                     // 　２月を２９日とする
	}
	myMonth = myDate.getMonth();                               // 月を取得(0月～11月)
	myToday = myDate.getDate();                                // 今日の'日'を退避
	myDate.setDate(1);                                         // 日付を'１日'に変えて、
	myWeek = myDate.getDay();                                  // 　'１日'の曜日を取得
	myTblLine = Math.ceil((myWeek+myMonthTbl[myMonth])/7);     // カレンダーの行数
	myTable   = new Array(7*myTblLine);                        // 表のセル数分定義
	
	for(i=0; i<7*myTblLine; i++) myTable[i]="　";              // myTableを掃除する
	for(i=0; i<myMonthTbl[myMonth]; i++)myTable[i+myWeek]=i+1; // 日付を埋め込む
	
	// ***********************
	//      カレンダーの表示  
	// ***********************
	document.write("<table class='table table-striped table-hover'>");      // 表の作成開始
	document.write("<tr>");                                    // 曜日見出しセット
	for(i=0; i<7; i++){                                        // 一行(１週間)ループ
	   document.write("<th class='text-center'>");
	   document.write("<span class='");    // '日'から'土'の表示
		  if (i==0)document.write("text-danger'>"); // 選択セルの色
		  else if (i==6)document.write("text-info'>"); // 選択セルの色
		  else               document.write("'>"); // 非選択のセルの色
	   document.write(myWeekTbl[i],"</span>");    // '日'から'土'の表示
	   document.write("</th>");
	}
	document.write("</tr>");
	
	for(i=0; i<myTblLine; i++){                                // 表の「行」のループ
	   document.write("<tr>");                                 // 行の開始
	   for(j=0; j<7; j++){                                     // 表の「列」のループ
		  document.write("<td class='text-center");               // 列(セル)の作成
		  myDat = myTable[j+(i*7)];                            // 書きこむ内容の取得
		  if (myDat==myToday)document.write(" info'>"); // 選択セルの色
		  else               document.write("'>"); // 非選択のセルの色
		  document.write("<a href='#'>",myDat,"</a>");        // 日付セット
		  document.write("</td>");                             // 列(セル)の終わり
	   }
	   document.write("</tr>");                                // 行の終わり
	}
	document.write("</table>");                                // 表の終わり
// --></script>

</div>
<div class="well">
<div class="container bg-default">
	 <h3 class="text-primary">
<script type="text/javascript"><!--
	myWeekTbl = new Array("日","月","火","水","木","金","土");  // 曜日テーブル定義
	myDate    = new Date();                                    // 今日の日付データ取得
	myMonth = myDate.getMonth();                               // 月を取得(0月～11月)
	myToday = myDate.getDate();                                // 今日の'日'を退避
	myWeek = myDate.getDay();                                  // 　'日'の曜日を取得
	myTitle = "今日"
	document.write(myTitle, " ",(myMonth+1), "月",myToday, "日 ",myWeekTbl[myWeek],"曜日");
// --></script>
</h3>
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
