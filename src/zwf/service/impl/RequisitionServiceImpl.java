package zwf.service.impl;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.RequisitionDao;
import zwf.po.Requisition;
import zwf.service.RequisitionService;
@Service
@Transactional
public class RequisitionServiceImpl implements RequisitionService {
	
	@Autowired
	private RequisitionDao requisitionDao;
	
	@Override
	public List<Requisition> select_Requisition(Map<String, Object> param) {
		return this.requisitionDao.select_Requisition(param);
	}

	@Override
	public int getCount_Requisition(Integer role_id,Timestamp start_time, String patient_id,
			 String patient_name) {
		return this.requisitionDao.getCount_Requisition(role_id,start_time,patient_id,patient_name);
	}

	

}
