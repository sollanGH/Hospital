package zwf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medical_Orders_List_Action;

public interface Medical_Orders_List_ActionDao {

    
	//新增单个病人临时医嘱单
	public int addMedical_Orders_List_action(Medical_Orders_List_Action medical_Orders_List_Action);
	public int addMedical_Orders_List_action_project(Medical_Orders_List_Action medical_Orders_List_Action);
	public int addMedical_Orders_List_action_Inspection_item(Medical_Orders_List_Action medical_Orders_List_Action);
	//新增单个病人长期医嘱单无结束时间
	public int addMedical_Orders_List_action_Long(Medical_Orders_List_Action medical_Orders_List_Action);
	public int addMedical_Orders_List_action_Long_project(Medical_Orders_List_Action medical_Orders_List_Action);
	public int addMedical_Orders_List_action_Long_Inspection_item(Medical_Orders_List_Action medical_Orders_List_Action);
	//新增单个病人长期医嘱单有结束时间
	public int addMedical_Orders_List_action_Long_end(Medical_Orders_List_Action medical_Orders_List_Action);
	public int addMedical_Orders_List_action_Long_end_project(Medical_Orders_List_Action medical_Orders_List_Action);
	public int addMedical_Orders_List_action_Long_end_Inspection_item(Medical_Orders_List_Action medical_Orders_List_Action);
	
	//查询单个病人的当天临时医嘱详情
	public List<Medical_Orders_List_Action> select_today_Medical_Orders_List(Map<String,Object> param);
	
	public int getCount_today_Medical_Orders_List(@Param("patient_id") String patient_id,
			@Param("medical_orders_action_id") Integer medical_orders_action_id);
	//查询单个病人的当天长期医嘱详情
	public List<Medical_Orders_List_Action> select_today_Medical_Orders_List_Long(Map<String,Object> param);
	
	public int getCount_today_Medical_Orders_List_Long(@Param("patient_id") String patient_id,
			@Param("medical_orders_action_id") Integer medical_orders_action_id);
	
	//执行医嘱
	public int action_Medical_Orders_List_Action(Medical_Orders_List_Action medical_Orders_List_Action);
	//查看当天某个病人医嘱总数量
	public int getCount_All_Medical_Orders_List_Action(Medical_Orders_List_Action medical_Orders_List_Action);
	//查看当天某个病人已执行医嘱数量
	public int getCount_Action_Medical_Orders_List_Action(Medical_Orders_List_Action medical_Orders_List_Action);
	//打印临时医嘱执行单
	public List<Medical_Orders_List_Action> printf_select_today_Medical_Orders_List(Map<String,Object> param);
	//打印长期医嘱执行单
	public List<Medical_Orders_List_Action> printf_select_today_Medical_Orders_List_Long(Map<String,Object> param);
	
}

	

