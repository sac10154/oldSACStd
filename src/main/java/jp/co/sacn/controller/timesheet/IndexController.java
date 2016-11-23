package jp.co.sacn.controller.timesheet;

//import javax.servlet.http.HttpSession;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
//import org.slim3.util.ApplicationMessage;

public class IndexController extends Controller {

    @Override
    public Navigation run() throws Exception {
//    	HttpSession session = request.getSession(false);
//    	if(session == null){
//            errors.put("message", ApplicationMessage.get("error.login.failure"));
//            return forward("/error.jsp");
//    	}
    	return forward("index.jsp");
    }
}
