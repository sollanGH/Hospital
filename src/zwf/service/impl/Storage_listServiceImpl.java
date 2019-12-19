package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Storage_listDao;
import zwf.po.Storage_list;
import zwf.service.Storage_listService;


@Service
@Transactional
public class Storage_listServiceImpl implements Storage_listService {
	
	@Autowired
	private Storage_listDao storage_listDao;

	@Override
	public List<Storage_list> selectStorage_list(Map<String, Object> param) {
		return this.storage_listDao.selectStorage_list(param);
	}

	@Override
	public int getCountStorage_list(String storage_id) {
		return this.storage_listDao.getCountStorage_list(storage_id);
	}

	@Override
	public int addStroage_list(Storage_list storage_list) {
		return this.storage_listDao.addStroage_list(storage_list);
	}

	@Override
	public int updateStroage_list(Storage_list storage_list) {
		return this.storage_listDao.updateStroage_list(storage_list);
	}

	@Override
	public int delStroage_list(Storage_list storage_list) {
		return this.storage_listDao.delStroage_list(storage_list);
	}

	

	
	

}
