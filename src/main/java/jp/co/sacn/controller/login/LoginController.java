package jp.co.sacn.controller.login;

import jp.co.sacn.service.EmployeeService;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.util.ApplicationMessage;
import org.slim3.util.RequestMap;

public class LoginController extends Controller {

    private EmployeeService service = new EmployeeService();

    @Override
    public Navigation run() throws Exception {
        boolean blLogin = service.login(new RequestMap(request));
        if(blLogin){
            return redirect("/timesheet/");
        } else {
            errors.put("message", ApplicationMessage.get("error.login.failure"));
            return forward(basePath);
        }
    }
}
