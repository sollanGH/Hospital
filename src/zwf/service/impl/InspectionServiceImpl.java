package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.InspectionDao;
import zwf.dao.Inspection_listDao;
import zwf.po.Inspection;
import zwf.po.Inspection_list;
import zwf.service.InspectionService;
@Service
@Transactional
public class InspectionServiceImpl implements InspectionService {
	
	@Autowired
	private InspectionDao inspectionDao;
	@Autowired
	private Inspection_listDao inspection_listDao;

	@Override
	public List<Inspection> select_Inspection(Map<String, Object> param) {
		return this.inspectionDao.select_Inspection(param);
	}

	@Override
	public int getCount_Inspection(Inspection inspection) {
		return this.inspectionDao.getCount_Inspection(inspection);
	}

	@Override
	public int add_Inspection(Inspection inspection) {
		return this.inspectionDao.add_Inspection(inspection);
	}

	@Override
	public int check_Inspection(Inspection inspection) {
		return this.inspectionDao.check_Inspection(inspection);
	}

	@Override
	public List<Inspection> select_action_Inspection(Map<String, Object> param) {
		return this.inspectionDao.select_action_Inspection(param);
	}

	@Override
	public int getCount_action_Inspection(Inspection inspection) {
		return this.inspectionDao.getCount_action_Inspection(inspection);
	}

	@Override
	public int action_Inspection(Inspection inspection,
			Inspection_list inspection_list) {
		
		int row = 0;
		
		int row1 = this.inspectionDao.action_Inspection(inspection);
		
		if(row1 > 0 ){
			
			int row2 = this.inspection_listDao.action_Inspection_list(inspection_list);
			
			 row = row1 + row2;
			
		}
		
		return row;
	}

	@Override
	public int action_Inspection2(Inspection inspection) {
		return this.inspectionDao.action_Inspection2(inspection);
	}

	@Override
	public int add_suggest_Inspection(Inspection inspection) {
		return this.inspectionDao.add_suggest_Inspection(inspection);
	}

	@Override
	public List<Inspection> select_show_Inspection(Map<String, Object> param) {
		return this.inspectionDao.select_show_Inspection(param);
	}

	@Override
	public int getCount_show_Inspection(Inspection inspection) {
		return this.inspectionDao.getCount_show_Inspection(inspection);
	}

	@Override
	public String show_suggest_Inspection(Inspection inspection) {
		return this.inspectionDao.show_suggest_Inspection(inspection);
	}

	

	
	
	

}
