package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Inspection_listDao;
import zwf.po.Inspection_list;
import zwf.service.Inspection_listService;
@Service
@Transactional
public class Inspection_listServiceImpl implements Inspection_listService {
	
	@Autowired
	private Inspection_listDao inspection_listDao;

	@Override
	public List<Inspection_list> select_Inspection_list(
			Map<String, Object> param) {
		return this.inspection_listDao.select_Inspection_list(param);
	}

	@Override
	public int getCount_Inspection_list(Inspection_list inspection_list) {
		return this.inspection_listDao.getCount_Inspection_list(inspection_list);
	}

	@Override
	public int edit_Inspection_list(Inspection_list inspection_list) {
		return this.inspection_listDao.edit_Inspection_list(inspection_list);
	}

	@Override
	public int count_action_Inspection_list(Inspection_list inspection_list) {
		return this.inspection_listDao.count_action_Inspection_list(inspection_list);
	}

	@Override
	public List<Inspection_list> printf_select_Inspection_list(
			Map<String, Object> param) {
		return this.inspection_listDao.printf_select_Inspection_list(param);
	}

	
	
	

}
