package zwf.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Payment;


public interface PaymentDao {
	
	//添加 预交金费用 
	public int addPayment_message(Payment payment);
	//添加 药品费用
	public int add_medical_Payment_message(Payment payment);
	//添加非药品费用
	public int add_project_Payment_message(Payment payment);
	//添加非药品费用
	public int zuofri_Payment_message(Payment payment);
	//添加床位费
	public int add_bed_Payment_message(Payment payment);
	//添加检验费
	public int add_Inspection_Payment_message(Payment payment);
	//结算费用
	public int jiesuan_Payment(Payment payment);
	
	public List<Payment> select_Singel_Patient_Advance_Payment(Map<String,Object> param);
	//预交款
	public int get_Singel_Patient_Advance_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	
	//其他费用
	public List<Payment> select_Singel_Patient_other_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_other_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time,
			@Param("payment_category") String payment_category);
	
	
	//当天费用
	public List<Payment> select_Singel_Patient_today_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_today_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	
	
	//药品
	public List<Payment> select_Singel_Patient_medical_Payment(Map<String,Object> param);
	
	public int get_Singel_Patient_medical_Payment(@Param("patient_id") String patient_id,
			@Param("start_time") Timestamp start_time,
			@Param("end_time") Timestamp end_time);
	//条件
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
	
	//一条数据
	public List<Payment> select_one_Payment(Map<String,Object> param);
	
	//冲减药品费用
	public int delete_medical_Payment_message(@Param("select_id") String select_id);
	public int update_medical_Payment_message(Payment payment);
	
	//更新冲减状态
	public int update_chongjian_Payment(Payment payment);
	
}
