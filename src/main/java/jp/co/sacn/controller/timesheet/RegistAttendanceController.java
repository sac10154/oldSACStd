package jp.co.sacn.controller.timesheet;

import jp.co.sacn.model.Attendance;
import jp.co.sacn.service.AttendanceService;
import jp.co.sacn.util.StringUtils;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.util.ApplicationMessage;
import org.slim3.util.BeanUtil;
import org.slim3.util.RequestMap;

public class RegistAttendanceController extends Controller {

    private AttendanceService service = new AttendanceService();

    @Override
    public Navigation run() throws Exception {
    	Attendance attendance = new Attendance();
        BeanUtil.copy(request, attendance);
        if(StringUtils.isNull(attendance.getYmd())){
            errors.put("message", ApplicationMessage.get("error.attendance.invalid.input"));
            return forward(basePath);
        }
        Attendance at = service.create(new RequestMap(request));
    	
    	requestScope("userid",at.getUserid());
    	requestScope("ymd",at.getYmd());
    	requestScope("arrivalTime",at.getArrivalTime());
    	requestScope("quittingTime",at.getQuittingTime());
    	requestScope("memo",at.getMemo());
    	requestScope("type",at.getType());

    	String year = this.request.getParameter("yy");
    	String month = this.request.getParameter("mm");
    	String day = this.request.getParameter("dd");
    	requestScope("year",year);
        requestScope("month",month);
        requestScope("day",day);
    	return forward("index.jsp");
    }
}
