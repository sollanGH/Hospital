package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zwf.dao.Inspection_item_listDao;
import zwf.po.Inspection_item_list;
import zwf.service.Inspection_item_listService;
@Service
@Transactional
public class Inspection_item_listServiceImpl implements Inspection_item_listService {
	
	@Autowired
	private Inspection_item_listDao inspection_item_listDao;

	@Override
	public List<Inspection_item_list> select_Inspection_item_list(
			Map<String, Object> param) {
		return this.inspection_item_listDao.select_Inspection_item_list(param);
	}

	@Override
	public int getCount_Inspection_item_list(
			Inspection_item_list inspection_item_list) {
		return this.inspection_item_listDao.getCount_Inspection_item_list(inspection_item_list);
	}

	@Override
	public int add_Inspection_item_list(
			Inspection_item_list inspection_item_list) {
		return this.inspection_item_listDao.add_Inspection_item_list(inspection_item_list);
	}

	@Override
	public int edit_Inspection_item_list(
			Inspection_item_list inspection_item_list) {
		return this.inspection_item_listDao.edit_Inspection_item_list(inspection_item_list);
	}

	@Override
	public int del_Inspection_item_list(
			Inspection_item_list inspection_item_list) {
		return this.inspection_item_listDao.del_Inspection_item_list(inspection_item_list);
	}

	
	

}
