function selectCalendar(el){
	var clickVal = el.text;
	$('#calendarForm [name=dd]').val(clickVal);
	var form = $('#calendarForm');
	form.attr('method', 'post');
	form.attr('action', '/timesheet/');
	form.submit();
}
