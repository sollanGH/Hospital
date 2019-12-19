package zwf.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Payment;


public interface PaymentService {

	public int addPayment_message(Payment payment);
	
	public int add_medical_Payment_message(Payment payment);
	
	public int add_project_Payment_message(Payment payment);
	
	public int zuofri_Payment_message(Payment payment);
	
	public int add_Inspection_Payment_message(Payment payment);
	
	public int jiesuan_Payment(Payment payment);
	
	public int chongjian_Payment(Payment payment);
	
	public List<Payment> select_Singel_Patient_Advance_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_Advance_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	
	public List<Payment> select_Singel_Patient_other_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_other_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time,
			@Param("payment_category") String payment_category);
	
	public List<Payment> select_Singel_Patient_today_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_today_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	
	
	public List<Payment> select_Singel_Patient_medical_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_medical_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	
	public List<Payment> select_Singel_Patient_condiction_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_condiction_Payment(@Param("patient_id") String patient_id,
			@Param("payment_name") String payment_name,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	
	public List<Payment> select_Patient_Payment(Map<String,Object> param);
	
	public int get_select_Patient_Payment(@Param("patient_id") String patient_id,
			@Param("payment_name") String payment_name,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	
	
	public List<Payment> select_one_Payment(Map<String,Object> param);
	
	public int update_chongjian_Payment(Payment payment);
}
