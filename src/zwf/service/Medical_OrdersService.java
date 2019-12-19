package zwf.service;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medical_Orders;



public interface Medical_OrdersService {
	
	//查找是否存在医嘱表
	public int getCountMedical_Orders(@Param("patient_id") String patient_id);
	
	public int addMedical_Orders(Medical_Orders medical_Orders);
	//不存在就创建医嘱表
	public int buildYiZhu(String patient_id,Medical_Orders medical_Orders);
	
	public int showMedical_Orders_Id(@Param("patient_id") String patient_id);
	
	public List<Medical_Orders> select_Action_Medical_Orders(Map<String,Object> param);
	
	public int getCount_Action_Medical_Orders(@Param("deparment_id")String deparment_id,
			@Param("role_id")Integer role_id);
}
