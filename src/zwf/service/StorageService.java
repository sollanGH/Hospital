package zwf.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Storage;


public interface StorageService {
	

	public List<Storage> selectStorage(Map<String,Object> param);
	
	public int getCountStorage(@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time,
			@Param("storage_status") Integer storage_status);
	
	public int addStroage(Storage storage);
	
	public int actionStroage(Storage storage);
	
	public int zuofei1Stroage(Storage storage);
	
	public int zuofei2Stroage(Storage storage);
}
