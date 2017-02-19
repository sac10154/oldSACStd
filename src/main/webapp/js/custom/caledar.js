function selectCalendar(el){
	var clickVal = el.text;
	$('#calendarForm [name=dd]').val(clickVal);
	var form = $('#calendarForm');
	form.attr('method', 'post');
	form.attr('action', '/timesheet/');
	form.submit();
}

function registAttendance(){
	var arrivalTimeVal = $('#selArrivalTime').val();
	var quittingTimeVal = $('#selQuittingTime').val();
	var typeVal = $('#selType').val();
	var memoVal = $('#InputMemo').val();
	$('#registAttendanceForm [name=arrivalTime]').val(arrivalTimeVal);
	$('#registAttendanceForm [name=quittingTime]').val(quittingTimeVal);
	$('#registAttendanceForm [name=type]').val(typeVal);
	$('#registAttendanceForm [name=memo]').val(memoVal);
	var form = $('#registAttendanceForm');
	form.attr('method', 'post');
	form.attr('action', '/timesheet/RegistAttendance');
	form.submit();
}
