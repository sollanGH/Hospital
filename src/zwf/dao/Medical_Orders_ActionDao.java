package zwf.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medical_Orders_Action;




public interface Medical_Orders_ActionDao {

	
	
	
	public int addMedical_Orders_action(Medical_Orders_Action medical_Orders_Action);
		
	//查询全部病人的医嘱执行情况
	public List<Medical_Orders_Action> select_today_Action_Medical_Orders(Map<String,Object> param);
	
	public int getCount_today_Action_Medical_Orders(@Param("deparment_id")String deparment_id,
			@Param("role_id")Integer role_id,
			@Param("start_time") Timestamp start_time,
			@Param("user_work_id") String user_work_id);
	
	//更新医嘱状态已完成
	public int update_finish_action_Medical_Orders_Action(@Param("medical_orders_action_id") Integer medical_orders_action_id);
	//更新医嘱状态未完成
	public int update_not_finish_action_Medical_Orders_Action(@Param("medical_orders_action_id") Integer medical_orders_action_id);
	//查看每天每个病人的medical_Orders_Action_id
	public int select_medical_Orders_Action_id(Medical_Orders_Action medical_Orders_Action);
	
}
