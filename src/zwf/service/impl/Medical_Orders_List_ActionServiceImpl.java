package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Medical_Orders_ActionDao;
import zwf.dao.Medical_Orders_List_ActionDao;
import zwf.dao.RequisitionDao;
import zwf.dao.Requisition_ListDao;
import zwf.po.Medical_Orders_Action;
import zwf.po.Medical_Orders_List_Action;
import zwf.po.Requisition;
import zwf.po.Requisition_List;
import zwf.service.Medical_Orders_List_ActionService;


@Service
@Transactional
public class Medical_Orders_List_ActionServiceImpl implements Medical_Orders_List_ActionService {

	@Autowired
	private Medical_Orders_List_ActionDao medical_Orders_List_ActionDao;
	@Autowired
	private Medical_Orders_ActionDao medical_Orders_ActionDao;
	@Autowired
	private RequisitionDao requisitionDao;
	@Autowired
	private Requisition_ListDao requisition_ListDao;

	@Override
	public List<Medical_Orders_List_Action> select_today_Medical_Orders_List(
			Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.medical_Orders_List_ActionDao.select_today_Medical_Orders_List(param);
	}

	@Override
	public int getCount_today_Medical_Orders_List(String patient_id,
			Integer medical_orders_action_id) {
		// TODO Auto-generated method stub
		return this.medical_Orders_List_ActionDao.getCount_today_Medical_Orders_List(patient_id, medical_orders_action_id);
	}

	@Override
	public List<Medical_Orders_List_Action> select_today_Medical_Orders_List_Long(
			Map<String, Object> param) {
		return this.medical_Orders_List_ActionDao.select_today_Medical_Orders_List_Long(param);
	}

	@Override
	public int getCount_today_Medical_Orders_List_Long(String patient_id,
			Integer medical_orders_action_id) {
		return this.medical_Orders_List_ActionDao.getCount_today_Medical_Orders_List_Long(patient_id, medical_orders_action_id);
	}

	@Override
	public int action_Medical_Orders_List_Action(
			Medical_Orders_List_Action medical_Orders_List_Action,
			Medical_Orders_Action medical_Orders_Action,Requisition requisition) {
		
			int row = this.medical_Orders_List_ActionDao.action_Medical_Orders_List_Action(medical_Orders_List_Action);
			
			if(row > 0){
				
				int start_staus = this.medical_Orders_List_ActionDao.getCount_All_Medical_Orders_List_Action(medical_Orders_List_Action);
				int action_staus = this.medical_Orders_List_ActionDao.getCount_Action_Medical_Orders_List_Action(medical_Orders_List_Action);
				
				if(start_staus == action_staus){
					this.medical_Orders_ActionDao.update_finish_action_Medical_Orders_Action(medical_Orders_Action.getMedical_orders_action_id());
				}
				
				//查找是否存在请领单
				int countrequisition = this.requisitionDao.countRequisition_message(requisition);
				
				if(countrequisition == 0){
					//没有请领单，新增
					int addrequisition = this.requisitionDao.addRequisition_message(requisition);
					
					if (addrequisition > 0){
						
						int showrequisitionid = this.requisitionDao.showRequisition_message_Id(requisition);
						
						return showrequisitionid;
					}
					
				}else if(countrequisition > 0){
					
					int showrequisitionid = this.requisitionDao.showRequisition_message_Id(requisition);
					
					return showrequisitionid;
					
				}
				
			}
		
		
		return 0;
	}

	@Override
	public int add_Requisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.addRequisition_List(requisition_List);
	}

	@Override
	public List<Medical_Orders_List_Action> printf_select_today_Medical_Orders_List(
			Map<String, Object> param) {
		return this.medical_Orders_List_ActionDao.printf_select_today_Medical_Orders_List(param);
	}

	@Override
	public List<Medical_Orders_List_Action> printf_select_today_Medical_Orders_List_Long(
			Map<String, Object> param) {
		return this.medical_Orders_List_ActionDao.printf_select_today_Medical_Orders_List_Long(param);
	}
	

	
	

}
