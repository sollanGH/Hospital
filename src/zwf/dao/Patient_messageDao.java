package zwf.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Patient_message;

public interface Patient_messageDao {
	
	/**
	 * 查找所有入院有关的信息
	 * @param param
	 * @return
	 */
	public List<Patient_message> selectAllPatient_message(Map<String,Object> param);
	public List<Patient_message> selectAllPatient_message_doctor(Map<String,Object> param);
	
	/**
	 *  获取所有入院有关的页数
	 * @param bed_name
	 * @param Room_id
	 * @param deparment_id
	 * @return
	 */	
	public int getCountPatient_message(@Param("patient_id") String patient_id,
			@Param("patient_name") String patient_name,
			@Param("start_ruyuan_time") Timestamp start_ruyuan_time,
			@Param("end_ruyuan_time") Timestamp end_ruyuan_time);
	public int getCountPatient_message_doctor(@Param("patient_id") String patient_id,
			@Param("patient_name") String patient_name,
			@Param("start_ruyuan_time") Timestamp start_ruyuan_time,
			@Param("end_ruyuan_time") Timestamp end_ruyuan_time,
			@Param("doctor_id") String doctor_id);
	/**
	 * 增
	 * @param patient_message
	 * @return
	 */
	public int addPatient_message(Patient_message patient_message);
	
	/**
	 * 更
	 * @param patient_message
	 * @return
	 */
	public int updatePatient_message(Patient_message patient_message);
	
	/**
	 * 查找所有已经入院有关的信息
	 * @param param
	 * @return
	 */
	public List<Patient_message> selectAll_UsePatient_message(Map<String,Object> param);
	
	public int getCount_UsePatient_message(@Param("patient_id") String patient_id,
			@Param("select_deparment_id") Integer select_deparment_id,
			@Param("patient_name") String patient_name,
			@Param("start_ruyuan_time") Timestamp start_ruyuan_time,
			@Param("end_ruyuan_time") Timestamp end_ruyuan_time);
	/**
	 * 查找所有已经产生费用有关的病人信息
	 * @param param
	 * @return
	 */
	public List<Patient_message> selectAll_Payment_Patient_message(Map<String,Object> param);
	
	public int getCount_Payment_Patient_message(@Param("patient_id") String patient_id,
			@Param("select_deparment_id") Integer select_deparment_id,
			@Param("patient_name") String patient_name,
			@Param("start_ruyuan_time") Timestamp start_ruyuan_time,
			@Param("end_ruyuan_time") Timestamp end_ruyuan_time);
	/**
	 * 查找所有已经入院有关的信息相关医生
	 * @param param
	 * @return
	 */
	public List<Patient_message> selectAll_UsePatient_message_doctor(Map<String,Object> param);
	
	public int getCount_UsePatient_message_doctor(@Param("patient_id") String patient_id,
			@Param("select_deparment_id") Integer select_deparment_id,
			@Param("patient_name") String patient_name,
			@Param("start_ruyuan_time") Timestamp start_ruyuan_time,
			@Param("end_ruyuan_time") Timestamp end_ruyuan_time,
			@Param("doctor_id") String doctor_id,
			@Param("role_id") Integer role_id);
	
	
	
	public List<Patient_message> selectAll_Payment_select_Patient_message(Map<String,Object> param);
	
	public int getCount_Payment_select_Patient_message(
			@Param("select_deparment_id") Integer select_deparment_id,
			@Param("patient_id") String patient_id,
			@Param("patient_name") String patient_name,
			@Param("start_ruyuan_time") Timestamp start_ruyuan_time,
			@Param("end_ruyuan_time") Timestamp end_ruyuan_time);
	
	public List<Patient_message> selectAll_Payment_today_Patient_message(Map<String,Object> param);
	
	public int getCount_Payment_today_Patient_message(
			@Param("select_deparment_id") Integer select_deparment_id,
			@Param("patient_id") String patient_id,
			@Param("patient_name") String patient_name,
			@Param("start_ruyuan_time") Timestamp start_ruyuan_time,
			@Param("end_ruyuan_time") Timestamp end_ruyuan_time);
	
	
	
	
	public int update_chuyuan_Patient_message(Patient_message patient_message);
	
	
	//是否出院
	public int chuyuan_status(Patient_message patient_message);
	
}


	

