package jp.co.sacn.controller.users;

import jp.co.sacn.model.Employee;
import jp.co.sacn.service.EmployeeService;
import jp.co.sacn.util.StringUtils;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;
import org.slim3.util.ApplicationMessage;
import org.slim3.util.BeanUtil;
import org.slim3.util.RequestMap;

public class UserCreateController extends Controller {

    private EmployeeService service = new EmployeeService();

    @Override
    public Navigation run() throws Exception {
        Employee employee = new Employee();
        BeanUtil.copy(request, employee);
        if(StringUtils.isNull(employee.getUserid())||
                StringUtils.isNull(employee.getPassword())){
            errors.put("message", ApplicationMessage.get("error.users.invalid.input"));
            return forward(basePath);
        }
        service.create(new RequestMap(request));
        return forward(basePath);
    }
}
