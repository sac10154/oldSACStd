package jp.co.sacn.controller.timesheet;

import java.util.Calendar;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;

public class CanlendarController extends Controller {

    @Override
    public Navigation run() throws Exception {
    	String year = this.request.getParameter("yy");
    	String month = this.request.getParameter("mm");
    	String day = this.request.getParameter("dd");
    	if(year == null || month == null || day == null){
    		Calendar calendar = Calendar.getInstance();
    		year = Integer.toString(calendar.get(Calendar.YEAR));
    		month = Integer.toString(calendar.get(Calendar.MONTH) + 1);
    		day = Integer.toString(calendar.get(Calendar.DATE));
    	}
        requestScope("year",year);
        requestScope("month",month);
        requestScope("day",day);
    	return forward("index.jsp");
    }
}
