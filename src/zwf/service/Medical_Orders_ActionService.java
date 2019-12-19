package zwf.service;


import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medical_Orders_Action;



public interface Medical_Orders_ActionService {
	
	//查询全部病人的医嘱执行情况
		public List<Medical_Orders_Action> select_today_Action_Medical_Orders(Map<String,Object> param);
		
		public int getCount_today_Action_Medical_Orders(@Param("deparment_id")String deparment_id,
				@Param("role_id")Integer role_id,
				@Param("start_time") Timestamp start_time,
				@Param("user_work_id") String user_work_id);
}
