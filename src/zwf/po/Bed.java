package zwf.po;

public class Bed {

	private Integer bed_id;
	private String bed_name;
	private Integer room_id;
	private String patient_name;
	private String treanment_results;
	private Boolean bed_state;
	private Double bed_expenses;
	private String doctor_name;
	private String room_name;
	private String deparment_name;
	public Bed() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Bed(Integer bed_id, String bed_name, Integer room_id,
			String patient_name, String treanment_results, Boolean bed_state,
			Double bed_expenses, String doctor_name, String room_name,
			String deparment_name) {
		super();
		this.bed_id = bed_id;
		this.bed_name = bed_name;
		this.room_id = room_id;
		this.patient_name = patient_name;
		this.treanment_results = treanment_results;
		this.bed_state = bed_state;
		this.bed_expenses = bed_expenses;
		this.doctor_name = doctor_name;
		this.room_name = room_name;
		this.deparment_name = deparment_name;
	}

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getDeparment_name() {
		return deparment_name;
	}

	public void setDeparment_name(String deparment_name) {
		this.deparment_name = deparment_name;
	}

	public Integer getBed_id() {
		return bed_id;
	}
	public void setBed_id(Integer bed_id) {
		this.bed_id = bed_id;
	}
	public String getBed_name() {
		return bed_name;
	}
	public void setBed_name(String bed_name) {
		this.bed_name = bed_name;
	}
	public Integer getRoom_id() {
		return room_id;
	}
	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}
	public String getPatient_name() {
		return patient_name;
	}
	public void setPatient_name(String patient_name) {
		this.patient_name = patient_name;
	}
	public String getTreanment_results() {
		return treanment_results;
	}
	public void setTreanment_results(String treanment_results) {
		this.treanment_results = treanment_results;
	}
	public Boolean getBed_state() {
		return bed_state;
	}
	public void setBed_state(Boolean bed_state) {
		this.bed_state = bed_state;
	}
	public Double getBed_expenses() {
		return bed_expenses;
	}
	public void setBed_expenses(Double bed_expenses) {
		this.bed_expenses = bed_expenses;
	}
	public String getDoctor_name() {
		return doctor_name;
	}
	public void setDoctor_name(String doctor_name) {
		this.doctor_name = doctor_name;
	}
	@Override
	public String toString() {
		return "Bed [bed_id=" + bed_id + ", bed_name=" + bed_name
				+ ", room_id=" + room_id + ", patient_name=" + patient_name
				+ ", treanment_results=" + treanment_results + ", bed_state="
				+ bed_state + ", bed_expenses=" + bed_expenses
				+ ", doctor_name=" + doctor_name + ", room_name=" + room_name
				+ ", deparment_name=" + deparment_name + "]";
	}
}
