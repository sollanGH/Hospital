package zwf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import zwf.po.Requisition_List;

public interface Requisition_ListDao {
		
	public int addRequisition_List(Requisition_List requisition_List);
	
	public List<Requisition_List> selectRequisition_List(Map<String,Object> param);
	
	public int getCountRequisition_List(Requisition_List requisition_List);
	
	public List<Requisition_List> select_cancelRequisition_List(Map<String,Object> param);
	
	public int getCount_cancelRequisition_List(@Param("requisition_id") Integer requisition_id);
	
	//药品核对发药
	public int updateRequisition_List(Requisition_List requisition_List);
	//校对取消发药
	public int cancelRequisition_List(Requisition_List requisition_List);
	//执行发药
	public int actionRequisition_List(Requisition_List requisition_List);
	//打印
	public List<Requisition_List> printf_selectRequisition_List(Map<String,Object> param);
	
	//药品核对退药
	public int update_cancelRequisition_List(Requisition_List requisition_List);
	//校对取消发药
	public int cancel_cancelRequisition_List(Requisition_List requisition_List);
	//执行退药
	public int action_cancelRequisition_List(Requisition_List requisition_List);
	
}
