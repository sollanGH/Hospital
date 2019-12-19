package zwf.dao;


import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Param;
import zwf.po.Medical_Orders;



public interface Medical_OrdersDao {

	
	public int getCountMedical_Orders(@Param("patient_id") String patient_id);
	
	public int addMedical_Orders(Medical_Orders medical_Orders);
	
	public int showMedical_Orders_Id(@Param("patient_id") String patient_id);
	//查询全部病人的医嘱执行情况
	public List<Medical_Orders> select_Action_Medical_Orders(Map<String,Object> param);
	
	public int getCount_Action_Medical_Orders(@Param("deparment_id")String deparment_id,
			@Param("role_id")Integer role_id);
	
	//更新医嘱状态已完成
	public int update_finish_action_Medical_Orders(@Param("medical_orders_id") Integer medical_orders_id);
	
	//更新医嘱状态
	public int update_action_Medical_Orders(@Param("medical_orders_id") Integer medical_orders_id);
}
