package zwf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Storage_list;

public interface Storage_listDao {
	
	public List<Storage_list> selectStorage_list(Map<String,Object> param);
	
	public int getCountStorage_list(@Param("storage_id") String storage_id);
	
	public int addStroage_list(Storage_list storage_list);
	
	public int updateStroage_list(Storage_list storage_list);
	
	public int delStroage_list(Storage_list storage_list);
	
}
