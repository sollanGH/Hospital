package zwf.po;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Payment {
	
	private String payment_id;
	private String patient_id;
	//private Double operating_expenses;//手术费
	private Integer requisition_list_id;
	private String payment_name;//项目名称
	private Integer number;
	private Double single_expenses;
	private Double sum_expenses;
	private Double refunds;//退还金
	private Double advance_payment;//预交金
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date advance_payment_time;
	private String payee;//收款人
	private Double supplementary_payment;//补交费
	//private Double drug_costs;//药费
	//private Double survey_fee;//检验费
	private Double settle_accounts;//结账费
	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date settle_accounts_time;
	private Integer payment_status;
	private String select_id;
	private Timestamp start_time;
    private Timestamp end_time;
    private String payment_category;
    private String inspection_id;
    
    private User user;
    private Requisition_List requisition_List;
    private Medicines medicines;
    private Patient patient;
	public String getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public Integer getRequisition_list_id() {
		return requisition_list_id;
	}
	public void setRequisition_list_id(Integer requisition_list_id) {
		this.requisition_list_id = requisition_list_id;
	}
	public String getPayment_name() {
		return payment_name;
	}
	public void setPayment_name(String payment_name) {
		this.payment_name = payment_name;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Double getSingle_expenses() {
		return single_expenses;
	}
	public void setSingle_expenses(Double single_expenses) {
		this.single_expenses = single_expenses;
	}
	public Double getSum_expenses() {
		return sum_expenses;
	}
	public void setSum_expenses(Double sum_expenses) {
		this.sum_expenses = sum_expenses;
	}
	public Double getRefunds() {
		return refunds;
	}
	public void setRefunds(Double refunds) {
		this.refunds = refunds;
	}
	public Double getAdvance_payment() {
		return advance_payment;
	}
	public void setAdvance_payment(Double advance_payment) {
		this.advance_payment = advance_payment;
	}
	public Date getAdvance_payment_time() {
		return advance_payment_time;
	}
	public void setAdvance_payment_time(Date advance_payment_time) {
		this.advance_payment_time = advance_payment_time;
	}
	public String getPayee() {
		return payee;
	}
	public void setPayee(String payee) {
		this.payee = payee;
	}
	public Double getSupplementary_payment() {
		return supplementary_payment;
	}
	public void setSupplementary_payment(Double supplementary_payment) {
		this.supplementary_payment = supplementary_payment;
	}
	public Double getSettle_accounts() {
		return settle_accounts;
	}
	public void setSettle_accounts(Double settle_accounts) {
		this.settle_accounts = settle_accounts;
	}
	public Date getSettle_accounts_time() {
		return settle_accounts_time;
	}
	public void setSettle_accounts_time(Date settle_accounts_time) {
		this.settle_accounts_time = settle_accounts_time;
	}
	public Integer getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(Integer payment_status) {
		this.payment_status = payment_status;
	}
	public String getSelect_id() {
		return select_id;
	}
	public void setSelect_id(String select_id) {
		this.select_id = select_id;
	}
	public Timestamp getStart_time() {
		return start_time;
	}
	public void setStart_time(Timestamp start_time) {
		this.start_time = start_time;
	}
	public Timestamp getEnd_time() {
		return end_time;
	}
	public void setEnd_time(Timestamp end_time) {
		this.end_time = end_time;
	}
	public String getPayment_category() {
		return payment_category;
	}
	public void setPayment_category(String payment_category) {
		this.payment_category = payment_category;
	}
	public String getInspection_id() {
		return inspection_id;
	}
	public void setInspection_id(String inspection_id) {
		this.inspection_id = inspection_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Requisition_List getRequisition_List() {
		return requisition_List;
	}
	public void setRequisition_List(Requisition_List requisition_List) {
		this.requisition_List = requisition_List;
	}
	public Medicines getMedicines() {
		return medicines;
	}
	public void setMedicines(Medicines medicines) {
		this.medicines = medicines;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Payment(String payment_id, String patient_id,
			Integer requisition_list_id, String payment_name, Integer number,
			Double single_expenses, Double sum_expenses, Double refunds,
			Double advance_payment, Date advance_payment_time, String payee,
			Double supplementary_payment, Double settle_accounts,
			Date settle_accounts_time, Integer payment_status,
			String select_id, Timestamp start_time, Timestamp end_time,
			String payment_category, String inspection_id, User user,
			Requisition_List requisition_List, Medicines medicines,
			Patient patient) {
		super();
		this.payment_id = payment_id;
		this.patient_id = patient_id;
		this.requisition_list_id = requisition_list_id;
		this.payment_name = payment_name;
		this.number = number;
		this.single_expenses = single_expenses;
		this.sum_expenses = sum_expenses;
		this.refunds = refunds;
		this.advance_payment = advance_payment;
		this.advance_payment_time = advance_payment_time;
		this.payee = payee;
		this.supplementary_payment = supplementary_payment;
		this.settle_accounts = settle_accounts;
		this.settle_accounts_time = settle_accounts_time;
		this.payment_status = payment_status;
		this.select_id = select_id;
		this.start_time = start_time;
		this.end_time = end_time;
		this.payment_category = payment_category;
		this.inspection_id = inspection_id;
		this.user = user;
		this.requisition_List = requisition_List;
		this.medicines = medicines;
		this.patient = patient;
	}
	public Payment() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Payment [payment_id=" + payment_id + ", patient_id="
				+ patient_id + ", requisition_list_id=" + requisition_list_id
				+ ", payment_name=" + payment_name + ", number=" + number
				+ ", single_expenses=" + single_expenses + ", sum_expenses="
				+ sum_expenses + ", refunds=" + refunds + ", advance_payment="
				+ advance_payment + ", advance_payment_time="
				+ advance_payment_time + ", payee=" + payee
				+ ", supplementary_payment=" + supplementary_payment
				+ ", settle_accounts=" + settle_accounts
				+ ", settle_accounts_time=" + settle_accounts_time
				+ ", payment_status=" + payment_status + ", select_id="
				+ select_id + ", start_time=" + start_time + ", end_time="
				+ end_time + ", payment_category=" + payment_category
				+ ", inspection_id=" + inspection_id + ", user=" + user
				+ ", requisition_List=" + requisition_List + ", medicines="
				+ medicines + ", patient=" + patient + "]";
	}
	
    
	
	
}
