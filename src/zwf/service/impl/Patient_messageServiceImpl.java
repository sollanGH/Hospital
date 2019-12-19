package zwf.service.impl;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.BedDao;
import zwf.dao.PatientDao;
import zwf.dao.Patient_messageDao;
import zwf.po.Patient_message;
import zwf.service.Patient_messageService;


@Service
@Transactional
public class Patient_messageServiceImpl implements Patient_messageService{
	@Autowired
	private Patient_messageDao patient_messageDao;
	@Autowired
	private BedDao bedDao;
	@Autowired
	private PatientDao patientDao;
	
	/**
	 * 新增病人信息
	 */
	@Override
	public int addPatient_message(Patient_message patient_message) {
		// TODO Auto-generated method stub
		int row1 = this.patient_messageDao.addPatient_message(patient_message);
		int row2 = this.bedDao.updateRoomState(patient_message.getBed_id());
		int row = 0;
		if(row1 > 0 && row2 > 0){
			System.out.println("成功");
			row = 1;
		}else{
			System.out.println("失败");
		}
		return row;
	}

	@Override
	public List<Patient_message> selectAllPatient_message(
			Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.patient_messageDao.selectAllPatient_message(param);
	}

	@Override
	public int getCountPatient_message(String patient_id, String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time) {
		// TODO Auto-generated method stub
		return this.patient_messageDao.getCountPatient_message(patient_id, patient_name, start_ruyuan_time, end_ruyuan_time);
	}

	@Override
	public List<Patient_message> selectAll_UsePatient_message(
			Map<String, Object> param) {
		return this.patient_messageDao.selectAll_UsePatient_message(param);
	}

	@Override
	public int getCount_UsePatient_message(String patient_id,
			@Param("select_deparment_id") Integer select_deparment_id,
			String patient_name, Timestamp start_ruyuan_time,
			Timestamp end_ruyuan_time) {
		return this.patient_messageDao.getCount_UsePatient_message(patient_id, select_deparment_id, patient_name, start_ruyuan_time, end_ruyuan_time);
	}

	@Override
	public List<Patient_message> selectAll_Payment_Patient_message(
			Map<String, Object> param) {
		return this.patient_messageDao.selectAll_Payment_Patient_message(param);
	}

	@Override
	public int getCount_Payment_Patient_message(String patient_id,Integer select_deparment_id,
			String patient_name, Timestamp start_ruyuan_time,
			Timestamp end_ruyuan_time) {
		return this.patient_messageDao.getCount_Payment_Patient_message(patient_id, select_deparment_id, patient_name, start_ruyuan_time, end_ruyuan_time);
	}

	@Override
	public int updatePatient_message(Patient_message patient_message) {
		
		int row1 = this.patient_messageDao.updatePatient_message(patient_message);
		
		if(row1 > 0){
			 this.bedDao.updateRoomState(patient_message.getBed_id());
		}
		
		return row1;
	}

	@Override
	public List<Patient_message> selectAll_UsePatient_message_doctor(
			Map<String, Object> param) {
		return this.patient_messageDao.selectAll_UsePatient_message_doctor(param);
	}

	@Override
	public int getCount_UsePatient_message_doctor(String patient_id,
			Integer select_deparment_id, String patient_name,
			Timestamp start_ruyuan_time, Timestamp end_ruyuan_time,
			String doctor_id, Integer role_id) {
		return this.patient_messageDao.getCount_UsePatient_message_doctor(patient_id, select_deparment_id, patient_name, start_ruyuan_time, end_ruyuan_time, doctor_id, role_id);
	}

	@Override
	public List<Patient_message> selectAllPatient_message_doctor(
			Map<String, Object> param) {
		return this.patient_messageDao.selectAllPatient_message_doctor(param);
	}

	@Override
	public int getCountPatient_message_doctor(String patient_id,
			String patient_name, Timestamp start_ruyuan_time,
			Timestamp end_ruyuan_time, String doctor_id) {
		return this.patient_messageDao.getCountPatient_message_doctor(patient_id, patient_name, start_ruyuan_time, end_ruyuan_time, doctor_id);
	}

	@Override
	public List<Patient_message> selectAll_Payment_select_Patient_message(
			Map<String, Object> param) {
		return this.patient_messageDao.selectAll_Payment_select_Patient_message(param);
	}

	@Override
	public int getCount_Payment_select_Patient_message(
			Integer select_deparment_id, String patient_id, String patient_name,
			Timestamp start_ruyuan_time, Timestamp end_ruyuan_time) {
		return this.patient_messageDao.getCount_Payment_select_Patient_message(select_deparment_id, patient_id, patient_name, start_ruyuan_time, end_ruyuan_time);
	}

	@Override
	public List<Patient_message> selectAll_Payment_today_Patient_message(
			Map<String, Object> param) {
		return this.patient_messageDao.selectAll_Payment_today_Patient_message(param);
	}

	@Override
	public int getCount_Payment_today_Patient_message(
			Integer select_deparment_id, String patient_id,
			String patient_name, Timestamp start_ruyuan_time,
			Timestamp end_ruyuan_time) {
		return this.patient_messageDao.getCount_Payment_today_Patient_message(select_deparment_id, patient_id, patient_name, start_ruyuan_time, end_ruyuan_time);
	}

	@Override
	public int update_chuyuan_Patient_message(Patient_message patient_message) {
		return this.patient_messageDao.update_chuyuan_Patient_message(patient_message);
	}

	
}
