package jp.co.sacn.service;

import java.util.List;
import java.util.Map;

import jp.co.sacn.meta.EmployeeMeta;
import jp.co.sacn.meta.WorkReportMeta;
import jp.co.sacn.model.Employee;
import jp.co.sacn.model.WorkReport;
import jp.co.sacn.util.EncryptUtil;

import org.slim3.datastore.Datastore;
import org.slim3.util.BeanUtil;

import com.google.appengine.api.datastore.Transaction;

public class WorkReportService {

    private WorkReportMeta wr = new WorkReportMeta();    
    
    public WorkReport create(Map<String, Object> input) {
    	WorkReport workReport = new WorkReport();
        BeanUtil.copy(input, workReport);
        Transaction tx = Datastore.beginTransaction();
        Datastore.put(workReport);
        tx.commit();
        return workReport;
    }
    
    public boolean login(Map<String, Object> input) {
        Employee employee = new Employee();
        BeanUtil.copy(input, employee);
        String encryptpw = EncryptUtil.encryptStr(employee.getPassword());
        EmployeeMeta e = EmployeeMeta.get();
        List<Employee> list = Datastore.query(e).filter(e.userid.equal(employee.getUserid()), e.password.equal(encryptpw)).asList();
        if(list.size() == 0){
            return false;
        }
        return true;
    }

    public List<WorkReport> getWorkReportList() {
        return Datastore.query(wr).sort(wr.userid.desc,wr.ym.desc,wr.date.desc).asList();
    }

}
