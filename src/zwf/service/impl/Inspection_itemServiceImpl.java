package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Inspection_itemDao;
import zwf.po.Inspection_item;
import zwf.service.Inspection_itemService;
@Service
@Transactional
public class Inspection_itemServiceImpl implements Inspection_itemService {
	
	@Autowired
	private Inspection_itemDao inspection_itemDao;

	@Override
	public List<Inspection_item> select_Inspection_item(
			Map<String, Object> param) {
		return this.inspection_itemDao.select_Inspection_item(param);
	}

	@Override
	public int getCount_Inspection_item() {
		return this.inspection_itemDao.getCount_Inspection_item();
	}

	@Override
	public int add_Inspection_item(Inspection_item inspection_item) {
		return this.inspection_itemDao.add_Inspection_item(inspection_item);
	}

	@Override
	public int edit_Inspection_item(Inspection_item inspection_item) {
		return this.inspection_itemDao.edit_Inspection_item(inspection_item);
	}

	@Override
	public int del_Inspection_item(Inspection_item inspection_item) {
		return this.inspection_itemDao.del_Inspection_item(inspection_item);
	}

	@Override
	public List<Inspection_item> select_condition_Inspection_item(String condition) {
		return this.inspection_itemDao.select_condition_Inspection_item(condition);
	}
	
	

}
