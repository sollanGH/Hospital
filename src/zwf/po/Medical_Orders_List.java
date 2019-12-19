package zwf.po;


import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Medical_Orders_List {

	private Integer medical_orders_list_id;
	private Integer medical_orders_id;
	private Integer medicined_id;
	private Integer project_id;
	private Integer Inspection_item_id;
	private Integer group;
	private Integer number;
	private Integer sum_number;
	private Integer types;
	private String speed;
	private String ways;
	private String direction;
    private Patient patient;
    private Medicines  medicines;
    private Project project;
    private Inspection_item inspection_item;
    private Medical_Orders medical_Orders;
    private Patient_message patient_message;
    private Deparment deparment;
    private Bed bed;
    private User user;
    private User user1;
    private User user2;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date start_time;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date end_time;
    private String doctor_id;
    private String stop_doctor_id;
    private boolean start_status;
    private String nurse_id;
    private String check_nurse_id;
    private Integer check_status;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
	private Date check_time;
    private double money;
    private boolean action_status;
    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date action_time;
    private String select_id;
    private String patient_id;
    private Integer medical_orders_list_type;
	public Integer getMedical_orders_list_id() {
		return medical_orders_list_id;
	}
	public void setMedical_orders_list_id(Integer medical_orders_list_id) {
		this.medical_orders_list_id = medical_orders_list_id;
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
	public Integer getProject_id() {
		return project_id;
	}
	public void setProject_id(Integer project_id) {
		this.project_id = project_id;
	}
	public Integer getInspection_item_id() {
		return Inspection_item_id;
	}
	public void setInspection_item_id(Integer inspection_item_id) {
		Inspection_item_id = inspection_item_id;
	}
	public Integer getGroup() {
		return group;
	}
	public void setGroup(Integer group) {
		this.group = group;
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
	public Integer getTypes() {
		return types;
	}
	public void setTypes(Integer types) {
		this.types = types;
	}
	public String getSpeed() {
		return speed;
	}
	public void setSpeed(String speed) {
		this.speed = speed;
	}
	public String getWays() {
		return ways;
	}
	public void setWays(String ways) {
		this.ways = ways;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public Patient getPatient() {
		return patient;
	}
	public void setPatient(Patient patient) {
		this.patient = patient;
	}
	public Medicines getMedicines() {
		return medicines;
	}
	public void setMedicines(Medicines medicines) {
		this.medicines = medicines;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public Inspection_item getInspection_item() {
		return inspection_item;
	}
	public void setInspection_item(Inspection_item inspection_item) {
		this.inspection_item = inspection_item;
	}
	public Medical_Orders getMedical_Orders() {
		return medical_Orders;
	}
	public void setMedical_Orders(Medical_Orders medical_Orders) {
		this.medical_Orders = medical_Orders;
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
	public User getUser2() {
		return user2;
	}
	public void setUser2(User user2) {
		this.user2 = user2;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public Date getEnd_time() {
		return end_time;
	}
	public void setEnd_time(Date end_time) {
		this.end_time = end_time;
	}
	public String getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(String doctor_id) {
		this.doctor_id = doctor_id;
	}
	public String getStop_doctor_id() {
		return stop_doctor_id;
	}
	public void setStop_doctor_id(String stop_doctor_id) {
		this.stop_doctor_id = stop_doctor_id;
	}
	public boolean isStart_status() {
		return start_status;
	}
	public void setStart_status(boolean start_status) {
		this.start_status = start_status;
	}
	public String getNurse_id() {
		return nurse_id;
	}
	public void setNurse_id(String nurse_id) {
		this.nurse_id = nurse_id;
	}
	public String getCheck_nurse_id() {
		return check_nurse_id;
	}
	public void setCheck_nurse_id(String check_nurse_id) {
		this.check_nurse_id = check_nurse_id;
	}
	public Integer getCheck_status() {
		return check_status;
	}
	public void setCheck_status(Integer check_status) {
		this.check_status = check_status;
	}
	public Date getCheck_time() {
		return check_time;
	}
	public void setCheck_time(Date check_time) {
		this.check_time = check_time;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public boolean isAction_status() {
		return action_status;
	}
	public void setAction_status(boolean action_status) {
		this.action_status = action_status;
	}
	public Date getAction_time() {
		return action_time;
	}
	public void setAction_time(Date action_time) {
		this.action_time = action_time;
	}
	public String getSelect_id() {
		return select_id;
	}
	public void setSelect_id(String select_id) {
		this.select_id = select_id;
	}
	public String getPatient_id() {
		return patient_id;
	}
	public void setPatient_id(String patient_id) {
		this.patient_id = patient_id;
	}
	public Integer getMedical_orders_list_type() {
		return medical_orders_list_type;
	}
	public void setMedical_orders_list_type(Integer medical_orders_list_type) {
		this.medical_orders_list_type = medical_orders_list_type;
	}
	public Medical_Orders_List(Integer medical_orders_list_id,
			Integer medical_orders_id, Integer medicined_id,
			Integer project_id, Integer inspection_item_id, Integer group,
			Integer number, Integer sum_number, Integer types, String speed,
			String ways, String direction, Patient patient,
			Medicines medicines, Project project,
			Inspection_item inspection_item, Medical_Orders medical_Orders,
			Patient_message patient_message, Deparment deparment, Bed bed,
			User user, User user1, User user2, Date start_time, Date end_time,
			String doctor_id, String stop_doctor_id, boolean start_status,
			String nurse_id, String check_nurse_id, Integer check_status,
			Date check_time, double money, boolean action_status,
			Date action_time, String select_id, String patient_id,
			Integer medical_orders_list_type) {
		super();
		this.medical_orders_list_id = medical_orders_list_id;
		this.medical_orders_id = medical_orders_id;
		this.medicined_id = medicined_id;
		this.project_id = project_id;
		Inspection_item_id = inspection_item_id;
		this.group = group;
		this.number = number;
		this.sum_number = sum_number;
		this.types = types;
		this.speed = speed;
		this.ways = ways;
		this.direction = direction;
		this.patient = patient;
		this.medicines = medicines;
		this.project = project;
		this.inspection_item = inspection_item;
		this.medical_Orders = medical_Orders;
		this.patient_message = patient_message;
		this.deparment = deparment;
		this.bed = bed;
		this.user = user;
		this.user1 = user1;
		this.user2 = user2;
		this.start_time = start_time;
		this.end_time = end_time;
		this.doctor_id = doctor_id;
		this.stop_doctor_id = stop_doctor_id;
		this.start_status = start_status;
		this.nurse_id = nurse_id;
		this.check_nurse_id = check_nurse_id;
		this.check_status = check_status;
		this.check_time = check_time;
		this.money = money;
		this.action_status = action_status;
		this.action_time = action_time;
		this.select_id = select_id;
		this.patient_id = patient_id;
		this.medical_orders_list_type = medical_orders_list_type;
	}
	public Medical_Orders_List() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Medical_Orders_List [medical_orders_list_id="
				+ medical_orders_list_id + ", medical_orders_id="
				+ medical_orders_id + ", medicined_id=" + medicined_id
				+ ", project_id=" + project_id + ", Inspection_item_id="
				+ Inspection_item_id + ", group=" + group + ", number="
				+ number + ", sum_number=" + sum_number + ", types=" + types
				+ ", speed=" + speed + ", ways=" + ways + ", direction="
				+ direction + ", patient=" + patient + ", medicines="
				+ medicines + ", project=" + project + ", inspection_item="
				+ inspection_item + ", medical_Orders=" + medical_Orders
				+ ", patient_message=" + patient_message + ", deparment="
				+ deparment + ", bed=" + bed + ", user=" + user + ", user1="
				+ user1 + ", user2=" + user2 + ", start_time=" + start_time
				+ ", end_time=" + end_time + ", doctor_id=" + doctor_id
				+ ", stop_doctor_id=" + stop_doctor_id + ", start_status="
				+ start_status + ", nurse_id=" + nurse_id + ", check_nurse_id="
				+ check_nurse_id + ", check_status=" + check_status
				+ ", check_time=" + check_time + ", money=" + money
				+ ", action_status=" + action_status + ", action_time="
				+ action_time + ", select_id=" + select_id + ", patient_id="
				+ patient_id + ", medical_orders_list_type="
				+ medical_orders_list_type + "]";
	}
	
	
    
}
