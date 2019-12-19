package zwf.service.impl;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zwf.dao.StorageDao;
import zwf.po.Storage;
import zwf.service.StorageService;


@Service
@Transactional
public class StorageServiceImpl implements StorageService {
	
	@Autowired
	private StorageDao storageDao;

	@Override
	public List<Storage> selectStorage(Map<String, Object> param) {
		return this.storageDao.selectStorage(param);
	}

	@Override
	public int getCountStorage(Timestamp start_time, Timestamp end_time,Integer storage_status) {
		return this.storageDao.getCountStorage(start_time, end_time,storage_status);
	}

	@Override
	public int addStroage(Storage storage) {
		return this.storageDao.addStroage(storage);
	}

	@Override
	public int actionStroage(Storage storage) {
		return this.storageDao.actionStroage(storage);
	}

	@Override
	public int zuofei1Stroage(Storage storage) {
		return this.storageDao.zuofei1Stroage(storage);
	}

	@Override
	public int zuofei2Stroage(Storage storage) {
		return this.storageDao.zuofei2Stroage(storage);
	}

	
	

}
