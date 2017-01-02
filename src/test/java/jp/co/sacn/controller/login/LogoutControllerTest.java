package jp.co.sacn.controller.login;

import org.slim3.tester.ControllerTestCase;
import org.junit.Test;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

public class LogoutControllerTest extends ControllerTestCase {

    @Test
    public void run() throws Exception {
        tester.start("/login/Logout");
        LogoutController controller = tester.getController();
        assertThat(controller, is(notNullValue()));
        assertThat(tester.isRedirect(), is(false));
        assertThat(tester.getDestinationPath(), is("/login/logout.jsp"));
    }
}
