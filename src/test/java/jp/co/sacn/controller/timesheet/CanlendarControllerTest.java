package jp.co.sacn.controller.timesheet;

import org.slim3.tester.ControllerTestCase;
import org.junit.Test;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

public class CanlendarControllerTest extends ControllerTestCase {

    @Test
    public void run() throws Exception {
        tester.start("/timesheet/Canlendar");
        CanlendarController controller = tester.getController();
        assertThat(controller, is(notNullValue()));
        assertThat(tester.isRedirect(), is(false));
        assertThat(tester.getDestinationPath(), is("/timesheet/Canlendar.jsp"));
    }
}
