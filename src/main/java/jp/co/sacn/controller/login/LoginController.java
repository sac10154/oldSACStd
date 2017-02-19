package jp.co.sacn.controller.login;

import javax.servlet.http.HttpSession;

import jp.co.sacn.model.Employee;
import jp.co.sacn.service.EmployeeService;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.util.ApplicationMessage;
import org.slim3.util.RequestMap;

public class LoginController extends Controller {

    private EmployeeService service = new EmployeeService();

    @Override
    public Navigation run() throws Exception {
    	HttpSession session = request.getSession(false);
    	Employee employee = service.login(new RequestMap(request));
        if(employee != null){
            /* 認証済みにセット */
            session.setAttribute("login", "OK");
            session.setAttribute("userid", employee.getUserid());
        	requestScope("userid",employee.getUserid());
            return redirect("/timesheet/");
        } else {
            session.setAttribute("status", "Not Auth");
            errors.put("message", ApplicationMessage.get("error.login.failure"));
            return forward(basePath);
        }
    }
}
