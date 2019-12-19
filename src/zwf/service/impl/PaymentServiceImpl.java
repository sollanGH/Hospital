package zwf.service.impl;

import java.sql.Timestamp;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.PaymentDao;
import zwf.po.Payment;
import zwf.service.PaymentService;


@Service
@Transactional
public class PaymentServiceImpl implements PaymentService{
	@Autowired
	private PaymentDao paymentDao;

	@Override
	public int addPayment_message(Payment payment) {
		return this.paymentDao.addPayment_message(payment);
	}

	@Override
	public int add_medical_Payment_message(Payment payment) {
		return this.paymentDao.add_medical_Payment_message(payment);
	}

	@Override
	public List<Payment> select_Singel_Patient_Advance_Payment(Map<String, Object> param) {
		return this.paymentDao.select_Singel_Patient_Advance_Payment(param);
	}

	@Override
	public int get_Singel_Patient_Advance_Payment(String patient_id,
			Timestamp start_time, Timestamp end_time) {
		return this.paymentDao.get_Singel_Patient_Advance_Payment(patient_id, start_time, end_time);
	}

	@Override
	public List<Payment> select_Singel_Patient_medical_Payment(
			Map<String, Object> param) {
		return this.paymentDao.select_Singel_Patient_medical_Payment(param);
	}

	@Override
	public int get_Singel_Patient_medical_Payment(String patient_id,
			Timestamp start_time, Timestamp end_time) {
		return this.paymentDao.get_Singel_Patient_medical_Payment(patient_id, start_time, end_time);
	}

	@Override
	public List<Payment> select_Singel_Patient_condiction_Payment(
			Map<String, Object> param) {
		return this.paymentDao.select_Singel_Patient_condiction_Payment(param);
	}

	@Override
	public int get_Singel_Patient_condiction_Payment(String patient_id,
			String payment_name, Timestamp start_time, Timestamp end_time) {
		return this.paymentDao.get_Singel_Patient_condiction_Payment(patient_id, payment_name, start_time, end_time);
	}

	@Override
	public List<Payment> select_one_Payment(Map<String, Object> param) {
		return this.paymentDao.select_one_Payment(param);
	}

	@Override
	public List<Payment> select_Patient_Payment(Map<String, Object> param) {
		return this.paymentDao.select_Patient_Payment(param);
	}

	@Override
	public int get_select_Patient_Payment(String patient_id,
			String payment_name, Timestamp start_time, Timestamp end_time) {
		return this.paymentDao.get_select_Patient_Payment(patient_id, payment_name, start_time, end_time);
	}

	@Override
	public int add_project_Payment_message(Payment payment) {
		// TODO Auto-generated method stub
		return this.paymentDao.add_project_Payment_message(payment);
	}

	@Override
	public int zuofri_Payment_message(Payment payment) {
		return this.paymentDao.zuofri_Payment_message(payment);
	}

	@Override
	public List<Payment> select_Singel_Patient_other_Payment(
			Map<String, Object> param) {
		return this.paymentDao.select_Singel_Patient_other_Payment(param);
	}

	@Override
	public int get_Singel_Patient_other_Payment(String patient_id,
			Timestamp start_time, Timestamp end_time, String payment_category) {
		return this.paymentDao.get_Singel_Patient_other_Payment(patient_id, start_time, end_time, payment_category);
	}

	@Override
	public List<Payment> select_Singel_Patient_today_Payment(
			Map<String, Object> param) {
		return this.paymentDao.select_Singel_Patient_today_Payment(param);
	}

	@Override
	public int get_Singel_Patient_today_Payment(String patient_id,
			Timestamp start_time, Timestamp end_time) {
		return this.paymentDao.get_Singel_Patient_today_Payment(patient_id, start_time, end_time);
	}

	@Override
	public int jiesuan_Payment(Payment payment) {
		return this.paymentDao.jiesuan_Payment(payment);
	}

	@Override
	public int chongjian_Payment(Payment payment) {
		
		int row = 0;
		
		int row1 = this.paymentDao.delete_medical_Payment_message(payment.getSelect_id());
		
		int row2 = this.paymentDao.update_medical_Payment_message(payment);
		
		row = row1 + row2;
		
		return row;
	}

	@Override
	public int update_chongjian_Payment(Payment payment) {
		return this.paymentDao.update_chongjian_Payment(payment);
	}

	@Override
	public int add_Inspection_Payment_message(Payment payment) {
		return this.paymentDao.add_Inspection_Payment_message(payment);
	}
		
}
