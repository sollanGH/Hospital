package zwf.po;

import java.sql.Timestamp;


public class Requisition_List {
	private Integer requisition_list_id;
	private Integer requisition_id;
	private Integer medical_orders_id;
	private Integer medicined_id;
	private Integer number;
	private Integer sum_number;
	private String pharmacist;
	private String return_pharmacist;
	private Boolean check_requisition;
	private Boolean take_requisition;
	private Timestamp take_requisition_time;
	private Timestamp check_requisition_time;
	private Timestamp action_requisition_time;
	private String select_id;
	private Integer requisition_status;
	private Timestamp check_return_requisition_time;
	private Timestamp action_return_requisition_time;
	private Integer deparment_id;
	private Timestamp start_ruyuan_time;
	private Timestamp end_ruyuan_time;
	private String patient_name;
	private String patient_id;
	
	private User user;
	private User user1;
	private Patient patient;
	private Patient_message patient_message;
    private Deparment deparment;
    private Bed bed;
    private Medical_Orders_List_Action medical_orders_list_action;
	private Medicines  medicines;
	private Requisition requisition;
	public Integer getRequisition_list_id() {
		return requisition_list_id;
	}
	public void setRequisition_list_id(Integer requisition_list_id) {
		this.requisition_list_id = requisition_list_id;
	}
	public Integer getRequisition_id() {
		return requisition_id;
	}
	public void setRequisition_id(Integer requisition_id) {
		this.requisition_id = requisition_id;
	}
	public Integer getMedical_orders_id() {
		return medical_orders_id;
	}
	public void setMedical_orders_id(Integer medical_orders_id) {
		this.medical_orders_id = medical_orders_id;
	}
	public Integer getMedicined_id() {
		return medicined_id;
	}
	public void setMedicined_id(Integer medicined_id) {
		this.medicined_id = medicined_id;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Integer getSum_number() {
		return sum_number;
	}
	public void setSum_number(Integer sum_number) {
		this.sum_number = sum_number;
	}
	public String getPharmacist() {
		return pharmacist;
	}
	public void setPharmacist(String pharmacist) {
		this.pharmacist = pharmacist;
	}
	public String getReturn_pharmacist() {
		return return_pharmacist;
	}
	public void setReturn_pharmacist(String return_pharmacist) {
		this.return_pharmacist = return_pharmacist;
	}
	public Boolean getCheck_requisition() {
		return check_requisition;
	}
	public void setCheck_requisition(Boolean check_requisition) {
		this.check_requisition = check_requisition;
	}
	public Boolean getTake_requisition() {
		return take_requisition;
	}
	public void setTake_requisition(Boolean take_requisition) {
		this.take_requisition = take_requisition;
	}
	public Timestamp getTake_requisition_time() {
		return take_requisition_time;
	}
	public void setTake_requisition_time(Timestamp take_requisition_time) {
		this.take_requisition_time = take_requisition_time;
	}
	public Timestamp getCheck_requisition_time() {
		return check_requisition_time;
	}
	public void setCheck_requisition_time(Timestamp check_requisition_time) {
		this.check_requisition_time = check_requisition_time;
	}
	public Timestamp getAction_requisition_time() {
		return action_requisition_time;
	}
	public void setAction_requisition_time(Timestamp action_requisition_time) {
		this.action_requisition_time = action_requisition_time;
	}
	public String getSelect_id() {
		return select_id;
	}
	public void setSelect_id(String select_id) {
		this.select_id = select_id;
	}
	public Integer getRequisition_status() {
		return requisition_status;
	}
	public void setRequisition_status(Integer requisition_status) {
		this.requisition_status = requisition_status;
	}
	public Timestamp getCheck_return_requisition_time() {
		return check_return_requisition_time;
	}
	public void setCheck_return_requisition_time(
			Timestamp check_return_requisition_time) {
		this.check_return_requisition_time = check_return_requisition_time;
	}
	public Timestamp getAction_return_requisition_time() {
		return action_return_requisition_time;
	}
	public void setAction_return_requisition_time(
			Timestamp action_return_requisition_time) {
		this.action_return_requisition_time = action_return_requisition_time;
	}
	public Integer getDeparment_id() {
		return deparment_id;
	}
	public void setDeparment_id(Integer deparment_id) {
		this.deparment_id = deparment_id;
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
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public User getUser1() {
		return user1;
	}
	public void setUser1(User user1) {
		this.user1 = user1;
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
	public Deparment getDeparment() {
		return deparment;
	}
	public void setDeparment(Deparment deparment) {
		this.deparment = deparment;
	}
	public Bed getBed() {
		return bed;
	}
	public void setBed(Bed bed) {
		this.bed = bed;
	}
	public Medical_Orders_List_Action getMedical_orders_list_action() {
		return medical_orders_list_action;
	}
	public void setMedical_orders_list_action(
			Medical_Orders_List_Action medical_orders_list_action) {
		this.medical_orders_list_action = medical_orders_list_action;
	}
	public Medicines getMedicines() {
		return medicines;
	}
	public void setMedicines(Medicines medicines) {
		this.medicines = medicines;
	}
	public Requisition getRequisition() {
		return requisition;
	}
	public void setRequisition(Requisition requisition) {
		this.requisition = requisition;
	}
	public Requisition_List(Integer requisition_list_id,
			Integer requisition_id, Integer medical_orders_id,
			Integer medicined_id, Integer number, Integer sum_number,
			String pharmacist, String return_pharmacist,
			Boolean check_requisition, Boolean take_requisition,
			Timestamp take_requisition_time, Timestamp check_requisition_time,
			Timestamp action_requisition_time, String select_id,
			Integer requisition_status,
			Timestamp check_return_requisition_time,
			Timestamp action_return_requisition_time, Integer deparment_id,
			Timestamp start_ruyuan_time, Timestamp end_ruyuan_time,
			String patient_name, String patient_id, User user, User user1,
			Patient patient, Patient_message patient_message,
			Deparment deparment, Bed bed,
			Medical_Orders_List_Action medical_orders_list_action,
			Medicines medicines, Requisition requisition) {
		super();
		this.requisition_list_id = requisition_list_id;
		this.requisition_id = requisition_id;
		this.medical_orders_id = medical_orders_id;
		this.medicined_id = medicined_id;
		this.number = number;
		this.sum_number = sum_number;
		this.pharmacist = pharmacist;
		this.return_pharmacist = return_pharmacist;
		this.check_requisition = check_requisition;
		this.take_requisition = take_requisition;
		this.take_requisition_time = take_requisition_time;
		this.check_requisition_time = check_requisition_time;
		this.action_requisition_time = action_requisition_time;
		this.select_id = select_id;
		this.requisition_status = requisition_status;
		this.check_return_requisition_time = check_return_requisition_time;
		this.action_return_requisition_time = action_return_requisition_time;
		this.deparment_id = deparment_id;
		this.start_ruyuan_time = start_ruyuan_time;
		this.end_ruyuan_time = end_ruyuan_time;
		this.patient_name = patient_name;
		this.patient_id = patient_id;
		this.user = user;
		this.user1 = user1;
		this.patient = patient;
		this.patient_message = patient_message;
		this.deparment = deparment;
		this.bed = bed;
		this.medical_orders_list_action = medical_orders_list_action;
		this.medicines = medicines;
		this.requisition = requisition;
	}
	public Requisition_List() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Requisition_List [requisition_list_id=" + requisition_list_id
				+ ", requisition_id=" + requisition_id + ", medical_orders_id="
				+ medical_orders_id + ", medicined_id=" + medicined_id
				+ ", number=" + number + ", sum_number=" + sum_number
				+ ", pharmacist=" + pharmacist + ", return_pharmacist="
				+ return_pharmacist + ", check_requisition="
				+ check_requisition + ", take_requisition=" + take_requisition
				+ ", take_requisition_time=" + take_requisition_time
				+ ", check_requisition_time=" + check_requisition_time
				+ ", action_requisition_time=" + action_requisition_time
				+ ", select_id=" + select_id + ", requisition_status="
				+ requisition_status + ", check_return_requisition_time="
				+ check_return_requisition_time
				+ ", action_return_requisition_time="
				+ action_return_requisition_time + ", deparment_id="
				+ deparment_id + ", start_ruyuan_time=" + start_ruyuan_time
				+ ", end_ruyuan_time=" + end_ruyuan_time + ", patient_name="
				+ patient_name + ", patient_id=" + patient_id + ", user="
				+ user + ", user1=" + user1 + ", patient=" + patient
				+ ", patient_message=" + patient_message + ", deparment="
				+ deparment + ", bed=" + bed + ", medical_orders_list_action="
				+ medical_orders_list_action + ", medicines=" + medicines
				+ ", requisition=" + requisition + "]";
	}
	
	
	
}
