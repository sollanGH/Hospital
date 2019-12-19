package zwf.po;

import java.sql.Timestamp;

public class Patient {
	private String patient_id;
	private String patient_name;
	private Timestamp brith_day;
	private String marital_state;
	private String patient_meal;
	private String brith_place;
	private String id_number;
	private String phone;
	private String work_place;
	private Integer age;
	private String apatient_name;
	private String aphone;
	private String relation;
	private String insurance;
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public Timestamp getBrith_day() {
		return brith_day;
	}
	public void setBrith_day(Timestamp brith_day) {
		this.brith_day = brith_day;
	}
	public String getMarital_state() {
		return marital_state;
	}
	public void setMarital_state(String marital_state) {
		this.marital_state = marital_state;
	}
	public String getPatient_meal() {
		return patient_meal;
	}
	public void setPatient_meal(String patient_meal) {
		this.patient_meal = patient_meal;
	}
	public String getBrith_place() {
		return brith_place;
	}
	public void setBrith_place(String brith_place) {
		this.brith_place = brith_place;
	}
	public String getId_number() {
		return id_number;
	}
	public void setId_number(String id_number) {
		this.id_number = id_number;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWork_place() {
		return work_place;
	}
	public void setWork_place(String work_place) {
		this.work_place = work_place;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public String getApatient_name() {
		return apatient_name;
	}
	public void setApatient_name(String apatient_name) {
		this.apatient_name = apatient_name;
	}
	public String getAphone() {
		return aphone;
	}
	public void setAphone(String aphone) {
		this.aphone = aphone;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getInsurance() {
		return insurance;
	}
	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}
	public Patient() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Patient(String patient_id, String patient_name, Timestamp brith_day,
			String marital_state, String patient_meal, String brith_place,
			String id_number, String phone, String work_place, Integer age,
			String apatient_name, String aphone, String relation,
			String insurance) {
		super();
		this.patient_id = patient_id;
		this.patient_name = patient_name;
		this.brith_day = brith_day;
		this.marital_state = marital_state;
		this.patient_meal = patient_meal;
		this.brith_place = brith_place;
		this.id_number = id_number;
		this.phone = phone;
		this.work_place = work_place;
		this.age = age;
		this.apatient_name = apatient_name;
		this.aphone = aphone;
		this.relation = relation;
		this.insurance = insurance;
	}
	@Override
	public String toString() {
		return "Patient [patient_id=" + patient_id + ", patient_name="
				+ patient_name + ", brith_day=" + brith_day
				+ ", marital_state=" + marital_state + ", patient_meal="
				+ patient_meal + ", brith_place=" + brith_place
				+ ", id_number=" + id_number + ", phone=" + phone
				+ ", work_place=" + work_place + ", age=" + age
				+ ", apatient_name=" + apatient_name + ", aphone=" + aphone
				+ ", relation=" + relation + ", insurance=" + insurance + "]";
	}
	
	
	
	
	
}
