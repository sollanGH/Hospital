package zwf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medical_Orders_List;

public interface Medical_Orders_ListDao {

    //查询单个病人的临时医嘱详情
	public List<Medical_Orders_List> selectMedical_Orders_List(Map<String,Object> param);
	
	public int getCountMedical_Orders_List(@Param("patient_id") String patient_id);
	//查询单个病人的长期医嘱详情
	public List<Medical_Orders_List> selectMedical_Orders_List_Long(Map<String,Object> param);
	
	public int getCountMedical_Orders_List_Long(@Param("patient_id") String patient_id);
	//新增医嘱
	public int addMedical_Orders_List(Medical_Orders_List medical_Orders_List);
	//修改未校对单行时间
	public int updateMedical_Orders_List_singel_time(Medical_Orders_List medical_Orders_List);
	//修改已校对单行时间
	public int updateMedical_Orders_List_singel_time1(Medical_Orders_List medical_Orders_List);
	//修改同组未校对时间
	public int updateMedical_Orders_List_group_time(Medical_Orders_List medical_Orders_List);
	//修改同组已校对时间
	public int updateMedical_Orders_List_group_time1(Medical_Orders_List medical_Orders_List);
	
	public int updateMedical_Orders_List(Medical_Orders_List medical_Orders_List);
    //单行提交
	public int update_single_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//同组提交
	public int update_Group_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	public int update_Group_Medical_Orders_List2(Medical_Orders_List medical_Orders_List);
	//全部提交
	public int update_All_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	public int update_All_Medical_Orders_List2(Medical_Orders_List medical_Orders_List);
	//执行校对单个病人的临时医嘱数据显示
	public List<Medical_Orders_List> select_Action_Medical_Orders_List(Map<String,Object> param);
	
	public int getCount_Action_Medical_Orders_List(@Param("patient_id") String patient_id);
	//执行校对单个病人的长期医嘱数据显示
	public List<Medical_Orders_List> select_Action_Medical_Orders_List_Long(Map<String,Object> param);
	public int getCount_Action_Medical_Orders_List_Long(@Param("patient_id") String patient_id);
	
	public int getCount_Check_Medical_Orders_List_All(@Param("patient_id") String patient_id);
	
	//删除医嘱
	public int deleteMedical_Orders_List(@Param("medical_orders_list_id") String medical_orders_list_id);
	//校对医嘱
	public int check_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//回退医嘱
	public int return_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//校对取消
	public int cancel_check_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//执行医嘱
	public int action_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//已经执行医嘱
	public int get_action_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//已经回退医嘱
	public int get_return_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//停止单条医嘱
	public int update_single_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//同组停止
	public int update_Group_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//全部停止
	public int update_All_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List);
	//查询病人id
	public List<Medical_Orders_List> selectid();
	//查询当天需执行id
	public List<Medical_Orders_List> select_action_id(Medical_Orders_List medical_Orders_List);
	//查询单个病人当天临时医嘱数量
	public int getCount_Action(Medical_Orders_List medical_Orders_List);
	//查询单个病人当天长期医嘱数量无结束时间
	public int getCount_Action_Long(Medical_Orders_List medical_Orders_List);
	//查询单个病人当天临时医嘱数量有结束时间
	public int getCount_Action_Long_end(Medical_Orders_List medical_Orders_List);
	//新增单个病人医嘱单
	//public int addMedical_Orders_List_action(Medical_Orders_List medical_Orders_List);
}
