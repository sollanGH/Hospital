package zwf.po;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Medical_Orders_Action {

	private Integer medical_orders_action_id;
	private Integer medical_orders_id;
	private String patient_id;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date start_time;
	private Integer check_state;
	private String doctor_id;
	private Double sum_advance_payment;
    private Double sum_price;
    private Double after_expenses;
    private Integer role_id;
	private String user_work_id;
    
	private Patient patient;
	private Patient_message patient_message;
	private Bed bed;
	private Room room;
	private Deparment deparment;
	private User user;
	private Payment payment;
	public Integer getMedical_orders_action_id() {
		return medical_orders_action_id;
	}
	public void setMedical_orders_action_id(Integer medical_orders_action_id) {
		this.medical_orders_action_id = medical_orders_action_id;
	}
	public Integer getMedical_orders_id() {
		return medical_orders_id;
	}
	public void setMedical_orders_id(Integer medical_orders_id) {
		this.medical_orders_id = medical_orders_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public Integer getCheck_state() {
		return check_state;
	}
	public void setCheck_state(Integer check_state) {
		this.check_state = check_state;
	}
	public String getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(String doctor_id) {
		this.doctor_id = doctor_id;
	}
	public Double getSum_advance_payment() {
		return sum_advance_payment;
	}
	public void setSum_advance_payment(Double sum_advance_payment) {
		this.sum_advance_payment = sum_advance_payment;
	}
	public Double getSum_price() {
		return sum_price;
	}
	public void setSum_price(Double sum_price) {
		this.sum_price = sum_price;
	}
	public Double getAfter_expenses() {
		return after_expenses;
	}
	public void setAfter_expenses(Double after_expenses) {
		this.after_expenses = after_expenses;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public String getUser_work_id() {
		return user_work_id;
	}
	public void setUser_work_id(String user_work_id) {
		this.user_work_id = user_work_id;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Patient_message getPatient_message() {
		return patient_message;
	}
	public void setPatient_message(Patient_message patient_message) {
		this.patient_message = patient_message;
	}
	public Bed getBed() {
		return bed;
	}
	public void setBed(Bed bed) {
		this.bed = bed;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public Deparment getDeparment() {
		return deparment;
	}
	public void setDeparment(Deparment deparment) {
		this.deparment = deparment;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Payment getPayment() {
		return payment;
	}
	public void setPayment(Payment payment) {
		this.payment = payment;
	}
	public Medical_Orders_Action() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Medical_Orders_Action(Integer medical_orders_action_id,
			Integer medical_orders_id, String patient_id, Date start_time,
			Integer check_state, String doctor_id, Double sum_advance_payment,
			Double sum_price, Double after_expenses, Integer role_id,
			String user_work_id, Patient patient,
			Patient_message patient_message, Bed bed, Room room,
			Deparment deparment, User user, Payment payment) {
		super();
		this.medical_orders_action_id = medical_orders_action_id;
		this.medical_orders_id = medical_orders_id;
		this.patient_id = patient_id;
		this.start_time = start_time;
		this.check_state = check_state;
		this.doctor_id = doctor_id;
		this.sum_advance_payment = sum_advance_payment;
		this.sum_price = sum_price;
		this.after_expenses = after_expenses;
		this.role_id = role_id;
		this.user_work_id = user_work_id;
		this.patient = patient;
		this.patient_message = patient_message;
		this.bed = bed;
		this.room = room;
		this.deparment = deparment;
		this.user = user;
		this.payment = payment;
	}
	@Override
	public String toString() {
		return "Medical_Orders_Action [medical_orders_action_id="
				+ medical_orders_action_id + ", medical_orders_id="
				+ medical_orders_id + ", patient_id=" + patient_id
				+ ", start_time=" + start_time + ", check_state=" + check_state
				+ ", doctor_id=" + doctor_id + ", sum_advance_payment="
				+ sum_advance_payment + ", sum_price=" + sum_price
				+ ", after_expenses=" + after_expenses + ", role_id=" + role_id
				+ ", user_work_id=" + user_work_id + ", patient=" + patient
				+ ", patient_message=" + patient_message + ", bed=" + bed
				+ ", room=" + room + ", deparment=" + deparment + ", user="
				+ user + ", payment=" + payment + "]";
	}
	
	
}
