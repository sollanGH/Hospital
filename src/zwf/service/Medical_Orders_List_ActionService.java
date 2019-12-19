package zwf.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medical_Orders_Action;
import zwf.po.Medical_Orders_List_Action;
import zwf.po.Requisition;
import zwf.po.Requisition_List;



public interface Medical_Orders_List_ActionService {
	

	//查询单个病人的当天临时医嘱详情
	public List<Medical_Orders_List_Action> select_today_Medical_Orders_List(Map<String,Object> param);
	
	public int getCount_today_Medical_Orders_List(@Param("patient_id") String patient_id,
			@Param("medical_orders_action_id") Integer medical_orders_action_id);
	//查询单个病人的当天长期医嘱详情
	public List<Medical_Orders_List_Action> select_today_Medical_Orders_List_Long(Map<String,Object> param);
	
	public int getCount_today_Medical_Orders_List_Long(@Param("patient_id") String patient_id,
			@Param("medical_orders_action_id") Integer medical_orders_action_id);
	
	//执行医嘱业务
	public int action_Medical_Orders_List_Action(Medical_Orders_List_Action medical_Orders_List_Action,
			Medical_Orders_Action medical_Orders_Action,Requisition requisition);
	
	public int add_Requisition_List(Requisition_List requisition_List);
	
	public List<Medical_Orders_List_Action> printf_select_today_Medical_Orders_List(Map<String,Object> param);
	
	public List<Medical_Orders_List_Action> printf_select_today_Medical_Orders_List_Long(Map<String,Object> param);
}
