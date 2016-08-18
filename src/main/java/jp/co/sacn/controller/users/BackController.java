package jp.co.sacn.controller.users;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;

public class BackController extends Controller {

    @Override
    public Navigation run() throws Exception {
        return redirect("/");
    }
}
