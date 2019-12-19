package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Medical_OrdersDao;
import zwf.po.Medical_Orders;
import zwf.service.Medical_OrdersService;


@Service
@Transactional
public class Medical_OrdersServiceImpl implements Medical_OrdersService {

	@Autowired
	private Medical_OrdersDao medical_OrdersDao;

	@Override
	public int getCountMedical_Orders(String patient_id) {
		return this.medical_OrdersDao.getCountMedical_Orders(patient_id);
	}

	@Override
	public int addMedical_Orders(Medical_Orders medical_Orders) {
		return this.medical_OrdersDao.addMedical_Orders(medical_Orders);
	}
	
	@Override
	public int buildYiZhu(String patient_id, Medical_Orders medical_Orders) {
		int total = this.medical_OrdersDao.getCountMedical_Orders(patient_id);
		if(total == 0){
			this.medical_OrdersDao.addMedical_Orders(medical_Orders);
		}
		return total;
	}

	@Override
	public int showMedical_Orders_Id(String patient_id) {
		return this.medical_OrdersDao.showMedical_Orders_Id(patient_id);
	}

	@Override
	public List<Medical_Orders> select_Action_Medical_Orders(
			Map<String, Object> param) {
		return this.medical_OrdersDao.select_Action_Medical_Orders(param);
	}

	@Override
	public int getCount_Action_Medical_Orders(String deparment_id,
			Integer role_id) {
		return this.medical_OrdersDao.getCount_Action_Medical_Orders(deparment_id, role_id);
	}

	


}
