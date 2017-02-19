package jp.co.sacn.controller.timesheet;

import org.slim3.tester.ControllerTestCase;
import org.junit.Test;
import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

public class RegistAttendanceControllerTest extends ControllerTestCase {

    @Test
    public void run() throws Exception {
        tester.start("/timesheet/RegistAttendance");
        RegistAttendanceController controller = tester.getController();
        assertThat(controller, is(notNullValue()));
        assertThat(tester.isRedirect(), is(false));
        assertThat(tester.getDestinationPath(), is(nullValue()));
    }
}
