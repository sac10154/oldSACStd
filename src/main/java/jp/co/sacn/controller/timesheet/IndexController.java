package jp.co.sacn.controller.timesheet;

import java.util.Calendar;

import javax.servlet.http.HttpSession;

import jp.co.sacn.model.Attendance;
import jp.co.sacn.service.AttendanceService;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;

public class IndexController extends Controller {

    private AttendanceService service = new AttendanceService();

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

    	HttpSession session = request.getSession(false);
    	String userId = (String) session.getAttribute("userid");
    	Attendance at = service.get(userId,year+month+day);
    	if(at != null){
        	requestScope("userid",at.getUserid());
        	requestScope("ymd",at.getYmd());
        	requestScope("arrivalTime",at.getArrivalTime());
        	requestScope("quittingTime",at.getQuittingTime());
        	requestScope("memo",at.getMemo());
        	requestScope("type",at.getType());
    	}
    	requestScope("year",year);
        requestScope("month",month);
        requestScope("day",day);
    	return forward("index.jsp");
    }
}
