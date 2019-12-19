package zwf.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.MedicinesDao;
import zwf.po.Medicines;
import zwf.service.MedicinesService;
@Service
@Transactional
public class MedicinesServiceImpl implements MedicinesService {

	@Autowired
	private MedicinesDao medicinesDao;

	@Override
	public List<Medicines> selectMedicines(String condition,Integer medicines_category) {
		return this.medicinesDao.selectMedicines(condition,medicines_category);
	}

	@Override
	public int gstCountMedicines(String condition) {
		// TODO Auto-generated method stub
		return this.medicinesDao.gstCountMedicines(condition);
	}
	
	

}
