package jp.co.sacn.service;

import java.util.Map;

import jp.co.sacn.meta.AttendanceMeta;
import jp.co.sacn.model.Attendance;

import org.slim3.datastore.Datastore;
import org.slim3.util.BeanUtil;

import com.google.appengine.api.datastore.Transaction;

public class AttendanceService {

    private AttendanceMeta wr = new AttendanceMeta();    
    
    public Attendance create(Map<String, Object> input) {
    	Attendance attendance = new Attendance();
        BeanUtil.copy(input, attendance);
        Transaction tx = Datastore.beginTransaction();
        Datastore.put(attendance);
        tx.commit();
        return attendance;
    }

    public Attendance get(String userid, String ymd) {
        return Datastore.query(wr).filter(wr.userid.equal(userid), wr.ymd.equal(ymd)).asSingle();
    }
}
