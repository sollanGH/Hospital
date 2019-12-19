package zwf.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medical_Orders_Action;
import zwf.po.Medical_Orders_List;
import zwf.po.Medical_Orders_List_Action;
import zwf.po.Patient_message;
import zwf.po.Payment;
import zwf.po.Requisition;
import zwf.po.Requisition_List;


public interface Medical_Orders_ListService {
	

    public List<Medical_Orders_List> selectMedical_Orders_List(Map<String,Object> param);
    
    public List<Medical_Orders_List> selectMedical_Orders_List_Long(Map<String,Object> param);
	
	public int getCountMedical_Orders_List(@Param("patient_id") String patient_id);
	
	public int getCountMedical_Orders_List_Long(@Param("patient_id") String patient_id);
	
	public int addMedical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int updateMedical_Orders_List_singel_time(Medical_Orders_List medical_Orders_List);
	
	public int updateMedical_Orders_List_singel_time1(Medical_Orders_List medical_Orders_List);
	
	public int updateMedical_Orders_List_group_time(Medical_Orders_List medical_Orders_List);
	
	public int updateMedical_Orders_List_group_time1(Medical_Orders_List medical_Orders_List);
	
	public int updateMedical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int update_single_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int update_Group_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int update_All_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public List<Medical_Orders_List> select_Action_Medical_Orders_List(Map<String,Object> param);
	
	public int getCount_Action_Medical_Orders_List(@Param("patient_id") String patient_id);
	
	public List<Medical_Orders_List> select_Action_Medical_Orders_List_Long(Map<String,Object> param);
	
	public int getCount_Action_Medical_Orders_List_Long(@Param("patient_id") String patient_id);
	
	public int deleteMedical_Orders_List(@Param("medical_orders_list_id") String medical_orders_list_id);
	
	public int check_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int return_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int cancel_check_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int action_Medical_Orders_List(Medical_Orders_List medical_Orders_List,Requisition requisition);
	
	public int add_Requisition_List(Requisition_List requisition_List);
	
	public int update_action_Medical_Orders(Medical_Orders_List medical_Orders_List);
	
	public int update_single_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int update_Group_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public int update_All_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	
	public List<Medical_Orders_List> selectid();
	
	public List<Medical_Orders_List> select_action_id(Medical_Orders_List medical_Orders_List);
	
	//新增每个患者每天需执行医嘱
	public int add_everyday_medical_orders_action(Medical_Orders_List medical_Orders_List,
			Medical_Orders_Action medical_Orders_Action,
			Medical_Orders_List_Action medical_Orders_List_Action,
			Payment payment,Patient_message patient_message);
}
