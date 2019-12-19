package zwf.service.impl;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Medical_Orders_ActionDao;
import zwf.po.Medical_Orders_Action;
import zwf.service.Medical_Orders_ActionService;


@Service
@Transactional
public class Medical_Orders_ActionServiceImpl implements Medical_Orders_ActionService {

	@Autowired
	private Medical_Orders_ActionDao medical_Orders_ActionDao;

	@Override
	public List<Medical_Orders_Action> select_today_Action_Medical_Orders(
			Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.medical_Orders_ActionDao.select_today_Action_Medical_Orders(param);
	}

	@Override
	public int getCount_today_Action_Medical_Orders(String deparment_id,
			Integer role_id, Timestamp start_time , String user_work_id) {
		// TODO Auto-generated method stub
		return this.medical_Orders_ActionDao.getCount_today_Action_Medical_Orders(deparment_id, role_id, start_time, user_work_id);
	}

	
}
