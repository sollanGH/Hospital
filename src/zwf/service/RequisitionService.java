package zwf.service;


import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Requisition;



public interface RequisitionService {
	
	public List<Requisition> select_Requisition(Map<String,Object> param);
	
	public int getCount_Requisition(@Param("role_id") Integer role_id,
			@Param("start_time") Timestamp start_time,
			@Param("patient_id") String patient_id,
			@Param("patient_name") String patient_name);
}
