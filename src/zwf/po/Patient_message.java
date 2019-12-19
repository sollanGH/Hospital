package zwf.po;


import java.sql.Timestamp;

public class Patient_message {

	private String patient_message_id;
	private String patient_id;
	private String case_id;
	private Integer deparment_id;
	private Integer room_id;
	private Integer bed_id;
    private Timestamp ruyuan_time;
    private Timestamp start_ruyuan_time;
    private Timestamp end_ruyuan_time;
    private String ruyuan_state;
    private String transfer_state;
    private Integer churuan_room;
    private Timestamp churuan_time;
    private String diagnosis_a;
    private String diagnosis_b;
    private String doctor_id;
    private String company_name;
    private Integer company_bed_id;
    private String nurse_level;
    private Double sum_advance_payment;
    private Double sum_price;
    private Double after_expenses;
    private String patient_name;
    private String patient_meal;
    private int age;
    private String deparment_name;
    private String room_name;
    private String bed_name;
    private Integer select_deparment_id;
    private Integer role_id;
    private Double nopay;
    private Double havepay;
    
    private Patient patient;
    private Deparment deparment;
    private Room room;
    private Bed bed;
    private User user;
    private Payment payment;
	public String getPatient_message_id() {
		return patient_message_id;
	}
	public void setPatient_message_id(String patient_message_id) {
		this.patient_message_id = patient_message_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getCase_id() {
		return case_id;
	}
	public void setCase_id(String case_id) {
		this.case_id = case_id;
	}
	public Integer getDeparment_id() {
		return deparment_id;
	}
	public void setDeparment_id(Integer deparment_id) {
		this.deparment_id = deparment_id;
	}
	public Integer getRoom_id() {
		return room_id;
	}
	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}
	public Integer getBed_id() {
		return bed_id;
	}
	public void setBed_id(Integer bed_id) {
		this.bed_id = bed_id;
	}
	public Timestamp getRuyuan_time() {
		return ruyuan_time;
	}
	public void setRuyuan_time(Timestamp ruyuan_time) {
		this.ruyuan_time = ruyuan_time;
	}
	public Timestamp getStart_ruyuan_time() {
		return start_ruyuan_time;
	}
	public void setStart_ruyuan_time(Timestamp start_ruyuan_time) {
		this.start_ruyuan_time = start_ruyuan_time;
	}
	public Timestamp getEnd_ruyuan_time() {
		return end_ruyuan_time;
	}
	public void setEnd_ruyuan_time(Timestamp end_ruyuan_time) {
		this.end_ruyuan_time = end_ruyuan_time;
	}
	public String getRuyuan_state() {
		return ruyuan_state;
	}
	public void setRuyuan_state(String ruyuan_state) {
		this.ruyuan_state = ruyuan_state;
	}
	public String getTransfer_state() {
		return transfer_state;
	}
	public void setTransfer_state(String transfer_state) {
		this.transfer_state = transfer_state;
	}
	public Integer getChuruan_room() {
		return churuan_room;
	}
	public void setChuruan_room(Integer churuan_room) {
		this.churuan_room = churuan_room;
	}
	public Timestamp getChuruan_time() {
		return churuan_time;
	}
	public void setChuruan_time(Timestamp churuan_time) {
		this.churuan_time = churuan_time;
	}
	public String getDiagnosis_a() {
		return diagnosis_a;
	}
	public void setDiagnosis_a(String diagnosis_a) {
		this.diagnosis_a = diagnosis_a;
	}
	public String getDiagnosis_b() {
		return diagnosis_b;
	}
	public void setDiagnosis_b(String diagnosis_b) {
		this.diagnosis_b = diagnosis_b;
	}
	public String getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(String doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public Integer getCompany_bed_id() {
		return company_bed_id;
	}
	public void setCompany_bed_id(Integer company_bed_id) {
		this.company_bed_id = company_bed_id;
	}
	public String getNurse_level() {
		return nurse_level;
	}
	public void setNurse_level(String nurse_level) {
		this.nurse_level = nurse_level;
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
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public String getPatient_meal() {
		return patient_meal;
	}
	public void setPatient_meal(String patient_meal) {
		this.patient_meal = patient_meal;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getDeparment_name() {
		return deparment_name;
	}
	public void setDeparment_name(String deparment_name) {
		this.deparment_name = deparment_name;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public String getBed_name() {
		return bed_name;
	}
	public void setBed_name(String bed_name) {
		this.bed_name = bed_name;
	}
	public Integer getSelect_deparment_id() {
		return select_deparment_id;
	}
	public void setSelect_deparment_id(Integer select_deparment_id) {
		this.select_deparment_id = select_deparment_id;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public Double getNopay() {
		return nopay;
	}
	public void setNopay(Double nopay) {
		this.nopay = nopay;
	}
	public Double getHavepay() {
		return havepay;
	}
	public void setHavepay(Double havepay) {
		this.havepay = havepay;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Deparment getDeparment() {
		return deparment;
	}
	public void setDeparment(Deparment deparment) {
		this.deparment = deparment;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public Bed getBed() {
		return bed;
	}
	public void setBed(Bed bed) {
		this.bed = bed;
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
	public Patient_message(String patient_message_id, String patient_id,
			String case_id, Integer deparment_id, Integer room_id,
			Integer bed_id, Timestamp ruyuan_time, Timestamp start_ruyuan_time,
			Timestamp end_ruyuan_time, String ruyuan_state,
			String transfer_state, Integer churuan_room,
			Timestamp churuan_time, String diagnosis_a, String diagnosis_b,
			String doctor_id, String company_name, Integer company_bed_id,
			String nurse_level, Double sum_advance_payment, Double sum_price,
			Double after_expenses, String patient_name, String patient_meal,
			int age, String deparment_name, String room_name, String bed_name,
			Integer select_deparment_id, Integer role_id, Double nopay,
			Double havepay, Patient patient, Deparment deparment, Room room,
			Bed bed, User user, Payment payment) {
		super();
		this.patient_message_id = patient_message_id;
		this.patient_id = patient_id;
		this.case_id = case_id;
		this.deparment_id = deparment_id;
		this.room_id = room_id;
		this.bed_id = bed_id;
		this.ruyuan_time = ruyuan_time;
		this.start_ruyuan_time = start_ruyuan_time;
		this.end_ruyuan_time = end_ruyuan_time;
		this.ruyuan_state = ruyuan_state;
		this.transfer_state = transfer_state;
		this.churuan_room = churuan_room;
		this.churuan_time = churuan_time;
		this.diagnosis_a = diagnosis_a;
		this.diagnosis_b = diagnosis_b;
		this.doctor_id = doctor_id;
		this.company_name = company_name;
		this.company_bed_id = company_bed_id;
		this.nurse_level = nurse_level;
		this.sum_advance_payment = sum_advance_payment;
		this.sum_price = sum_price;
		this.after_expenses = after_expenses;
		this.patient_name = patient_name;
		this.patient_meal = patient_meal;
		this.age = age;
		this.deparment_name = deparment_name;
		this.room_name = room_name;
		this.bed_name = bed_name;
		this.select_deparment_id = select_deparment_id;
		this.role_id = role_id;
		this.nopay = nopay;
		this.havepay = havepay;
		this.patient = patient;
		this.deparment = deparment;
		this.room = room;
		this.bed = bed;
		this.user = user;
		this.payment = payment;
	}
	public Patient_message() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
