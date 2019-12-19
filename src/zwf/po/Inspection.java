package zwf.po;

import java.sql.Timestamp;

public class Inspection {
	
	private String inspection_id;
	private Integer medical_orders_list_action_id;
	private Integer inspection_item_id;
	private String inspector;
	private Timestamp inspection_time;
	private String recipients;
	private Timestamp acceptance_time;
	private Integer inspection_result;
	private String select_id;
	private Integer select_deparment_id;
	private String patient_name;
	private Timestamp start_ruyuan_time;
	private Timestamp end_ruyuan_time;
	private String inspection_suggest;
	private Integer role_id;
	private String user_work_id;
	
	private Medical_Orders_List_Action medical_orders_list_action;
	private Medical_Orders_Action medical_Orders_Action;
	private Patient patient;
	private Patient_message patient_message;
	private Deparment deparment;
	private User user;
	private User user1;
	private Inspection_item inspection_item;
	public String getInspection_id() {
		return inspection_id;
	}
	public void setInspection_id(String inspection_id) {
		this.inspection_id = inspection_id;
	}
	public Integer getMedical_orders_list_action_id() {
		return medical_orders_list_action_id;
	}
	public void setMedical_orders_list_action_id(
			Integer medical_orders_list_action_id) {
		this.medical_orders_list_action_id = medical_orders_list_action_id;
	}
	public Integer getInspection_item_id() {
		return inspection_item_id;
	}
	public void setInspection_item_id(Integer inspection_item_id) {
		this.inspection_item_id = inspection_item_id;
	}
	public String getInspector() {
		return inspector;
	}
	public void setInspector(String inspector) {
		this.inspector = inspector;
	}
	public Timestamp getInspection_time() {
		return inspection_time;
	}
	public void setInspection_time(Timestamp inspection_time) {
		this.inspection_time = inspection_time;
	}
	public String getRecipients() {
		return recipients;
	}
	public void setRecipients(String recipients) {
		this.recipients = recipients;
	}
	public Timestamp getAcceptance_time() {
		return acceptance_time;
	}
	public void setAcceptance_time(Timestamp acceptance_time) {
		this.acceptance_time = acceptance_time;
	}
	public Integer getInspection_result() {
		return inspection_result;
	}
	public void setInspection_result(Integer inspection_result) {
		this.inspection_result = inspection_result;
	}
	public String getSelect_id() {
		return select_id;
	}
	public void setSelect_id(String select_id) {
		this.select_id = select_id;
	}
	public Integer getSelect_deparment_id() {
		return select_deparment_id;
	}
	public void setSelect_deparment_id(Integer select_deparment_id) {
		this.select_deparment_id = select_deparment_id;
	}
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
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
	public String getInspection_suggest() {
		return inspection_suggest;
	}
	public void setInspection_suggest(String inspection_suggest) {
		this.inspection_suggest = inspection_suggest;
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
	public Medical_Orders_List_Action getMedical_orders_list_action() {
		return medical_orders_list_action;
	}
	public void setMedical_orders_list_action(
			Medical_Orders_List_Action medical_orders_list_action) {
		this.medical_orders_list_action = medical_orders_list_action;
	}
	public Medical_Orders_Action getMedical_Orders_Action() {
		return medical_Orders_Action;
	}
	public void setMedical_Orders_Action(Medical_Orders_Action medical_Orders_Action) {
		this.medical_Orders_Action = medical_Orders_Action;
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
	public Inspection_item getInspection_item() {
		return inspection_item;
	}
	public void setInspection_item(Inspection_item inspection_item) {
		this.inspection_item = inspection_item;
	}
	public Inspection(String inspection_id,
			Integer medical_orders_list_action_id, Integer inspection_item_id,
			String inspector, Timestamp inspection_time, String recipients,
			Timestamp acceptance_time, Integer inspection_result,
			String select_id, Integer select_deparment_id, String patient_name,
			Timestamp start_ruyuan_time, Timestamp end_ruyuan_time,
			String inspection_suggest, Integer role_id, String user_work_id,
			Medical_Orders_List_Action medical_orders_list_action,
			Medical_Orders_Action medical_Orders_Action, Patient patient,
			Patient_message patient_message, Deparment deparment, User user,
			User user1, Inspection_item inspection_item) {
		super();
		this.inspection_id = inspection_id;
		this.medical_orders_list_action_id = medical_orders_list_action_id;
		this.inspection_item_id = inspection_item_id;
		this.inspector = inspector;
		this.inspection_time = inspection_time;
		this.recipients = recipients;
		this.acceptance_time = acceptance_time;
		this.inspection_result = inspection_result;
		this.select_id = select_id;
		this.select_deparment_id = select_deparment_id;
		this.patient_name = patient_name;
		this.start_ruyuan_time = start_ruyuan_time;
		this.end_ruyuan_time = end_ruyuan_time;
		this.inspection_suggest = inspection_suggest;
		this.role_id = role_id;
		this.user_work_id = user_work_id;
		this.medical_orders_list_action = medical_orders_list_action;
		this.medical_Orders_Action = medical_Orders_Action;
		this.patient = patient;
		this.patient_message = patient_message;
		this.deparment = deparment;
		this.user = user;
		this.user1 = user1;
		this.inspection_item = inspection_item;
	}
	public Inspection() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Inspection [inspection_id=" + inspection_id
				+ ", medical_orders_list_action_id="
				+ medical_orders_list_action_id + ", inspection_item_id="
				+ inspection_item_id + ", inspector=" + inspector
				+ ", inspection_time=" + inspection_time + ", recipients="
				+ recipients + ", acceptance_time=" + acceptance_time
				+ ", inspection_result=" + inspection_result + ", select_id="
				+ select_id + ", select_deparment_id=" + select_deparment_id
				+ ", patient_name=" + patient_name + ", start_ruyuan_time="
				+ start_ruyuan_time + ", end_ruyuan_time=" + end_ruyuan_time
				+ ", inspection_suggest=" + inspection_suggest + ", role_id="
				+ role_id + ", user_work_id=" + user_work_id
				+ ", medical_orders_list_action=" + medical_orders_list_action
				+ ", medical_Orders_Action=" + medical_Orders_Action
				+ ", patient=" + patient + ", patient_message="
				+ patient_message + ", deparment=" + deparment + ", user="
				+ user + ", user1=" + user1 + ", inspection_item="
				+ inspection_item + "]";
	}
	
	
	
	
	

}
