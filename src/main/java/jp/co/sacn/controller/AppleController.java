package jp.co.sacn.controller;

import org.slim3.controller.Controller;
import org.slim3.controller.Navigation;

public class AppleController extends Controller {

    @Override
    public Navigation run() throws Exception {
        return forward("Apple.jsp");
    }
}
