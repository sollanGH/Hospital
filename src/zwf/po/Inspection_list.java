package zwf.po;

public class Inspection_list {
	
	private Integer Inspection_list_id;
	private String Inspection_id;
	private Integer Inspection_item_list_id;
	private Integer Inspection_item_id;
	private String Inspection_item_list_name;
	private String Inspection_item_list_abbr;
	private double Inspection_item_list_upper_limt;
	private double Inspection_item_list_lower_limit;
	private String  Inspection_item_list_other_limit;
	private String Inspection_item_result;
	private String Inspection_list_suggest;
	private String Inspection_item_list_unit;
	
	
	
	private Inspection inspection;
	private Medical_Orders_List_Action medical_Orders_List_Action;
	private Medical_Orders_Action medical_Orders_Action;
	private Patient patient;
	private Patient_message patient_message;
	private Deparment deparment;
	private Bed bed;
	public Integer getInspection_list_id() {
		return Inspection_list_id;
	}
	public void setInspection_list_id(Integer inspection_list_id) {
		Inspection_list_id = inspection_list_id;
	}
	public String getInspection_id() {
		return Inspection_id;
	}
	public void setInspection_id(String inspection_id) {
		Inspection_id = inspection_id;
	}
	public Integer getInspection_item_list_id() {
		return Inspection_item_list_id;
	}
	public void setInspection_item_list_id(Integer inspection_item_list_id) {
		Inspection_item_list_id = inspection_item_list_id;
	}
	public Integer getInspection_item_id() {
		return Inspection_item_id;
	}
	public void setInspection_item_id(Integer inspection_item_id) {
		Inspection_item_id = inspection_item_id;
	}
	public String getInspection_item_list_name() {
		return Inspection_item_list_name;
	}
	public void setInspection_item_list_name(String inspection_item_list_name) {
		Inspection_item_list_name = inspection_item_list_name;
	}
	public String getInspection_item_list_abbr() {
		return Inspection_item_list_abbr;
	}
	public void setInspection_item_list_abbr(String inspection_item_list_abbr) {
		Inspection_item_list_abbr = inspection_item_list_abbr;
	}
	public double getInspection_item_list_upper_limt() {
		return Inspection_item_list_upper_limt;
	}
	public void setInspection_item_list_upper_limt(
			double inspection_item_list_upper_limt) {
		Inspection_item_list_upper_limt = inspection_item_list_upper_limt;
	}
	public double getInspection_item_list_lower_limit() {
		return Inspection_item_list_lower_limit;
	}
	public void setInspection_item_list_lower_limit(
			double inspection_item_list_lower_limit) {
		Inspection_item_list_lower_limit = inspection_item_list_lower_limit;
	}
	public String getInspection_item_list_other_limit() {
		return Inspection_item_list_other_limit;
	}
	public void setInspection_item_list_other_limit(
			String inspection_item_list_other_limit) {
		Inspection_item_list_other_limit = inspection_item_list_other_limit;
	}
	public String getInspection_item_result() {
		return Inspection_item_result;
	}
	public void setInspection_item_result(String inspection_item_result) {
		Inspection_item_result = inspection_item_result;
	}
	public String getInspection_list_suggest() {
		return Inspection_list_suggest;
	}
	public void setInspection_list_suggest(String inspection_list_suggest) {
		Inspection_list_suggest = inspection_list_suggest;
	}
	public String getInspection_item_list_unit() {
		return Inspection_item_list_unit;
	}
	public void setInspection_item_list_unit(String inspection_item_list_unit) {
		Inspection_item_list_unit = inspection_item_list_unit;
	}
	public Inspection getInspection() {
		return inspection;
	}
	public void setInspection(Inspection inspection) {
		this.inspection = inspection;
	}
	public Medical_Orders_List_Action getMedical_Orders_List_Action() {
		return medical_Orders_List_Action;
	}
	public void setMedical_Orders_List_Action(
			Medical_Orders_List_Action medical_Orders_List_Action) {
		this.medical_Orders_List_Action = medical_Orders_List_Action;
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
	public Bed getBed() {
		return bed;
	}
	public void setBed(Bed bed) {
		this.bed = bed;
	}
	public Inspection_list(Integer inspection_list_id, String inspection_id,
			Integer inspection_item_list_id, Integer inspection_item_id,
			String inspection_item_list_name, String inspection_item_list_abbr,
			double inspection_item_list_upper_limt,
			double inspection_item_list_lower_limit,
			String inspection_item_list_other_limit,
			String inspection_item_result, String inspection_list_suggest,
			String inspection_item_list_unit, Inspection inspection,
			Medical_Orders_List_Action medical_Orders_List_Action,
			Medical_Orders_Action medical_Orders_Action, Patient patient,
			Patient_message patient_message, Deparment deparment, Bed bed) {
		super();
		Inspection_list_id = inspection_list_id;
		Inspection_id = inspection_id;
		Inspection_item_list_id = inspection_item_list_id;
		Inspection_item_id = inspection_item_id;
		Inspection_item_list_name = inspection_item_list_name;
		Inspection_item_list_abbr = inspection_item_list_abbr;
		Inspection_item_list_upper_limt = inspection_item_list_upper_limt;
		Inspection_item_list_lower_limit = inspection_item_list_lower_limit;
		Inspection_item_list_other_limit = inspection_item_list_other_limit;
		Inspection_item_result = inspection_item_result;
		Inspection_list_suggest = inspection_list_suggest;
		Inspection_item_list_unit = inspection_item_list_unit;
		this.inspection = inspection;
		this.medical_Orders_List_Action = medical_Orders_List_Action;
		this.medical_Orders_Action = medical_Orders_Action;
		this.patient = patient;
		this.patient_message = patient_message;
		this.deparment = deparment;
		this.bed = bed;
	}
	public Inspection_list() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Inspection_list [Inspection_list_id=" + Inspection_list_id
				+ ", Inspection_id=" + Inspection_id
				+ ", Inspection_item_list_id=" + Inspection_item_list_id
				+ ", Inspection_item_id=" + Inspection_item_id
				+ ", Inspection_item_list_name=" + Inspection_item_list_name
				+ ", Inspection_item_list_abbr=" + Inspection_item_list_abbr
				+ ", Inspection_item_list_upper_limt="
				+ Inspection_item_list_upper_limt
				+ ", Inspection_item_list_lower_limit="
				+ Inspection_item_list_lower_limit
				+ ", Inspection_item_list_other_limit="
				+ Inspection_item_list_other_limit
				+ ", Inspection_item_result=" + Inspection_item_result
				+ ", Inspection_list_suggest=" + Inspection_list_suggest
				+ ", Inspection_item_list_unit=" + Inspection_item_list_unit
				+ ", inspection=" + inspection
				+ ", medical_Orders_List_Action=" + medical_Orders_List_Action
				+ ", medical_Orders_Action=" + medical_Orders_Action
				+ ", patient=" + patient + ", patient_message="
				+ patient_message + ", deparment=" + deparment + ", bed=" + bed
				+ "]";
	}
	
	
	
	

}
