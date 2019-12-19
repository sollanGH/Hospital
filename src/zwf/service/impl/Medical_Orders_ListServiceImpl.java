package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Medical_OrdersDao;
import zwf.dao.Medical_Orders_ActionDao;
import zwf.dao.Medical_Orders_ListDao;
import zwf.dao.Medical_Orders_List_ActionDao;
import zwf.dao.Patient_messageDao;
import zwf.dao.PaymentDao;
import zwf.dao.RequisitionDao;
import zwf.dao.Requisition_ListDao;
import zwf.po.Medical_Orders_Action;
import zwf.po.Medical_Orders_List;
import zwf.po.Medical_Orders_List_Action;
import zwf.po.Patient_message;
import zwf.po.Payment;
import zwf.po.Requisition;
import zwf.po.Requisition_List;
import zwf.service.Medical_Orders_ListService;


@Service
@Transactional
public class Medical_Orders_ListServiceImpl implements Medical_Orders_ListService {

	@Autowired
	private Medical_Orders_ListDao medical_Orders_ListDao;
	@Autowired
	private RequisitionDao requisitionDao;
	@Autowired
	private Requisition_ListDao requisition_ListDao;
	@Autowired
	private Medical_OrdersDao medical_OrdersDao;
	@Autowired
	private Medical_Orders_ActionDao medical_Orders_ActionDao;
	@Autowired
	private Medical_Orders_List_ActionDao medical_Orders_List_ActionDao;
	@Autowired
	private PaymentDao paymentDao;
	@Autowired
	private Patient_messageDao patient_messageDao;

	@Override
	public List<Medical_Orders_List> selectMedical_Orders_List(
			Map<String, Object> param) {
		return this.medical_Orders_ListDao.selectMedical_Orders_List(param);
	}

	@Override
	public int getCountMedical_Orders_List(String patient_id) {
		return this.medical_Orders_ListDao.getCountMedical_Orders_List(patient_id);
	}

	@Override
	public int addMedical_Orders_List(Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.addMedical_Orders_List(medical_Orders_List);
	}

	@Override
	public int updateMedical_Orders_List(Medical_Orders_List medical_Orders_List) {
		
		int row1 = this.medical_Orders_ListDao.updateMedical_Orders_List(medical_Orders_List);
		
		/*if(row1 > 0){	
			int start_status = this.medical_Orders_ListDao.getCount_Action_Medical_Orders_List(medical_Orders_List.getPatient_id());
			int action_status = this.medical_Orders_ListDao.get_action_Medical_Orders_List(medical_Orders_List);
			if(start_status == action_status){
				this.medical_OrdersDao.update_finish_action_Medical_Orders(medical_Orders_List.getMedical_orders_id());
			}
			
		}*/
		
		return row1;
	}

	@Override
	public int update_single_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		
		int row1 = this.medical_Orders_ListDao.update_single_Medical_Orders_List(medical_Orders_List);
		
		if(row1 > 0){
			this.medical_OrdersDao.update_action_Medical_Orders(medical_Orders_List.getMedical_orders_id());
		}
		
		
		return row1;
	}

	@Override
	public int update_Group_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		
		int row1 = this.medical_Orders_ListDao.update_Group_Medical_Orders_List(medical_Orders_List);
		int row2 = this.medical_Orders_ListDao.update_Group_Medical_Orders_List2(medical_Orders_List);
		int row = row1 + row2;
		
		if(row1 > 0){
			this.medical_OrdersDao.update_action_Medical_Orders(medical_Orders_List.getMedical_orders_id());
		}
		
		return row;
	}

	@Override
	public int update_All_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		
		int row1 = this.medical_Orders_ListDao.update_All_Medical_Orders_List(medical_Orders_List);
		int row2 = this.medical_Orders_ListDao.update_All_Medical_Orders_List2(medical_Orders_List);
		int row = row1+row2;
		
		if(row1 > 0){
			this.medical_OrdersDao.update_action_Medical_Orders(medical_Orders_List.getMedical_orders_id());
		}
		
		return row;
	}

	@Override
	public List<Medical_Orders_List> select_Action_Medical_Orders_List(
			Map<String, Object> param) {
		return this.medical_Orders_ListDao.select_Action_Medical_Orders_List(param);
	}

	@Override
	public int getCount_Action_Medical_Orders_List(String patient_id) {
		return this.medical_Orders_ListDao.getCount_Action_Medical_Orders_List(patient_id);
	}

	@Override
	public int deleteMedical_Orders_List(String medical_orders_list_id) {
		return this.medical_Orders_ListDao.deleteMedical_Orders_List(medical_orders_list_id);
	}

	@Override
	public int check_Medical_Orders_List(Medical_Orders_List medical_Orders_List) {
		
		int row = this.medical_Orders_ListDao.check_Medical_Orders_List(medical_Orders_List);
		
		if(row>0){
			int start_status = this.medical_Orders_ListDao.getCount_Check_Medical_Orders_List_All(medical_Orders_List.getPatient_id());
			int check_status = this.medical_Orders_ListDao.get_action_Medical_Orders_List(medical_Orders_List);
			int return_status = this.medical_Orders_ListDao.get_return_Medical_Orders_List(medical_Orders_List);
			if(start_status == check_status+return_status){
				this.medical_OrdersDao.update_finish_action_Medical_Orders(medical_Orders_List.getMedical_orders_id());
			}
		}
		
		return row;
	}

	@Override
	public int cancel_check_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.cancel_check_Medical_Orders_List(medical_Orders_List);
	}

	@Override
	public int action_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List,Requisition requisition) {
		
		int status = this.medical_Orders_ListDao.action_Medical_Orders_List(medical_Orders_List);
		
		if(status > 0){
			
			
			int start_status = this.medical_Orders_ListDao.getCount_Action_Medical_Orders_List(medical_Orders_List.getPatient_id());
			int action_status = this.medical_Orders_ListDao.get_action_Medical_Orders_List(medical_Orders_List);
			if(start_status == action_status){
				this.medical_OrdersDao.update_finish_action_Medical_Orders(medical_Orders_List.getMedical_orders_id());
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
		}else{
			
			return 0;
			
		}
		
		return 0;
	}

	@Override
	public int add_Requisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.addRequisition_List(requisition_List);
	}

	@Override
	public int update_action_Medical_Orders(
			Medical_Orders_List medical_Orders_List) {
		
		int start_status = this.medical_Orders_ListDao.getCount_Action_Medical_Orders_List(medical_Orders_List.getPatient_id());
		int action_status = this.medical_Orders_ListDao.get_action_Medical_Orders_List(medical_Orders_List);
		if(start_status == action_status){
			this.medical_OrdersDao.update_finish_action_Medical_Orders(medical_Orders_List.getMedical_orders_id());
		}				
		return 0;
	}

	@Override
	public List<Medical_Orders_List> selectMedical_Orders_List_Long(
			Map<String, Object> param) {
		return this.medical_Orders_ListDao.selectMedical_Orders_List_Long(param);
	}

	@Override
	public int getCountMedical_Orders_List_Long(String patient_id) {
		return this.medical_Orders_ListDao.getCountMedical_Orders_List_Long(patient_id);
	}

	@Override
	public int updateMedical_Orders_List_singel_time(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.updateMedical_Orders_List_singel_time(medical_Orders_List);
	}

	@Override
	public int update_single_stop_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.update_single_stop_Medical_Orders_List(medical_Orders_List);
	}

	@Override
	public int update_Group_stop_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.update_Group_stop_Medical_Orders_List(medical_Orders_List);
	}

	@Override
	public int updateMedical_Orders_List_singel_time1(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.updateMedical_Orders_List_singel_time1(medical_Orders_List);
	}

	@Override
	public int update_All_stop_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.update_All_stop_Medical_Orders_List(medical_Orders_List);
	}

	@Override
	public int updateMedical_Orders_List_group_time(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.updateMedical_Orders_List_group_time(medical_Orders_List);
	}

	@Override
	public int updateMedical_Orders_List_group_time1(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.updateMedical_Orders_List_group_time1(medical_Orders_List);
	}

	@Override
	public List<Medical_Orders_List> selectid() {
		return this.medical_Orders_ListDao.selectid();
	}

	@Override
	public List<Medical_Orders_List> select_action_id(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.select_action_id(medical_Orders_List);
	}

	@Override
	public int add_everyday_medical_orders_action(
			Medical_Orders_List medical_Orders_List,Medical_Orders_Action medical_Orders_Action,
			Medical_Orders_List_Action medical_Orders_List_Action,Payment payment,Patient_message patient_message) {		
		int row3 = 0;
		List<Medical_Orders_List> row = this.medical_Orders_ListDao.selectid();
		for(int i=0;i<row.size();i++){
			
			patient_message.setPatient_id(row.get(i).getPatient_id());
			payment.setPatient_id(row.get(i).getPatient_id());
			medical_Orders_List.setPatient_id(row.get(i).getPatient_id());	
			medical_Orders_Action.setPatient_id(row.get(i).getPatient_id());
			medical_Orders_List_Action.setPatient_id(row.get(i).getPatient_id());
			
			
			int status = this.patient_messageDao.chuyuan_status(patient_message);
			if(status>0){
				this.paymentDao.add_bed_Payment_message(payment);
			}
			
			int row1 = this.medical_Orders_ListDao.getCount_Action(medical_Orders_List);
			if(row1>0){
			    this.medical_Orders_ActionDao.addMedical_Orders_action(medical_Orders_Action);
			    int medical_Orders_Action_id = this.medical_Orders_ActionDao.select_medical_Orders_Action_id(medical_Orders_Action);
			    int row2 = this.medical_Orders_List_ActionDao.addMedical_Orders_List_action(medical_Orders_List_Action);
			    row2 += this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_project(medical_Orders_List_Action);
			    row2 += this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_Inspection_item(medical_Orders_List_Action);
			    if(row2 > 0){
			    	this.medical_Orders_ActionDao.update_not_finish_action_Medical_Orders_Action(medical_Orders_Action_id);
			    }
			    row3 = row3 + row2;
			}
			int row4 = this.medical_Orders_ListDao.getCount_Action_Long(medical_Orders_List);
			if(row4>0){
			    this.medical_Orders_ActionDao.addMedical_Orders_action(medical_Orders_Action);
			    int medical_Orders_Action_id = this.medical_Orders_ActionDao.select_medical_Orders_Action_id(medical_Orders_Action);
			    int row2 = this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_Long(medical_Orders_List_Action);
			    row2 += this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_Long_project(medical_Orders_List_Action);
			    row2 += this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_Long_Inspection_item(medical_Orders_List_Action);
			    if(row2 > 0){
			    	this.medical_Orders_ActionDao.update_not_finish_action_Medical_Orders_Action(medical_Orders_Action_id);
			    }
				row3 = row3 + row2;
			}
			int row5 = this.medical_Orders_ListDao.getCount_Action_Long_end(medical_Orders_List);
			if(row5>0){
				this.medical_Orders_ActionDao.addMedical_Orders_action(medical_Orders_Action);
				int medical_Orders_Action_id = this.medical_Orders_ActionDao.select_medical_Orders_Action_id(medical_Orders_Action);
				int row2 = this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_Long_end(medical_Orders_List_Action);
				row2 += this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_Long_end_project(medical_Orders_List_Action);
				row2 += this.medical_Orders_List_ActionDao.addMedical_Orders_List_action_Long_end_Inspection_item(medical_Orders_List_Action);
				if(row2 > 0){
					this.medical_Orders_ActionDao.update_not_finish_action_Medical_Orders_Action(medical_Orders_Action_id);
				}
				row3 = row3 + row2;
			}
		}
		
		
		return row3;
	}

	@Override
	public List<Medical_Orders_List> select_Action_Medical_Orders_List_Long(
			Map<String, Object> param) {
		return this.medical_Orders_ListDao.select_Action_Medical_Orders_List_Long(param);
	}

	@Override
	public int getCount_Action_Medical_Orders_List_Long(String patient_id) {
		return this.medical_Orders_ListDao.getCount_Action_Medical_Orders_List_Long(patient_id);
	}

	@Override
	public int return_Medical_Orders_List(
			Medical_Orders_List medical_Orders_List) {
		return this.medical_Orders_ListDao.return_Medical_Orders_List(medical_Orders_List);
	}

	

	
	

	
	
	

}
