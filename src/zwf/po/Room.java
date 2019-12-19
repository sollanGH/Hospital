package zwf.po;

public class Room {

	private Integer room_id;
	private String room_name;
	private Integer deparment_id;
	private Integer bed_num;
	private String  principal;
	private Integer ruyuan_num;
	private Integer chuyuan_num;
	private double treatment_rate;
	private double improvement_rate;
	private Integer empty_beds;
	private String duty_officers_id;
	private String deparment_name;
	
	
	
	public String getDeparment_name() {
		return deparment_name;
	}
	public void setDeparment_name(String deparment_name) {
		this.deparment_name = deparment_name;
	}
	public Integer getRoom_id() {
		return room_id;
	}
	public void setRoom_id(Integer room_id) {
		this.room_id = room_id;
	}
	public String getRoom_name() {
		return room_name;
	}
	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}
	public Integer getDeparment_id() {
		return deparment_id;
	}
	public void setDeparment_id(Integer deparment_id) {
		this.deparment_id = deparment_id;
	}
	public Integer getBed_num() {
		return bed_num;
	}
	public void setBed_num(Integer bed_num) {
		this.bed_num = bed_num;
	}
	public String getPrincipal() {
		return principal;
	}
	public void setPrincipal(String principal) {
		this.principal = principal;
	}
	public Integer getRuyuan_num() {
		return ruyuan_num;
	}
	public void setRuyuan_num(Integer ruyuan_num) {
		this.ruyuan_num = ruyuan_num;
	}
	public Integer getChuyuan_num() {
		return chuyuan_num;
	}
	public void setChuyuan_num(Integer chuyuan_num) {
		this.chuyuan_num = chuyuan_num;
	}
	public double getTreatment_rate() {
		return treatment_rate;
	}
	public void setTreatment_rate(double treatment_rate) {
		this.treatment_rate = treatment_rate;
	}
	public double getImprovement_rate() {
		return improvement_rate;
	}
	public void setImprovement_rate(double improvement_rate) {
		this.improvement_rate = improvement_rate;
	}
	public Integer getEmpty_beds() {
		return empty_beds;
	}
	public void setEmpty_beds(Integer empty_beds) {
		this.empty_beds = empty_beds;
	}
	public String getDuty_officers_id() {
		return duty_officers_id;
	}
	public void setDuty_officers_id(String duty_officers_id) {
		this.duty_officers_id = duty_officers_id;
	}
	public Room() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Room(Integer room_id, String room_name, Integer deparment_id,
			Integer bed_num, String principal, Integer ruyuan_num,
			Integer chuyuan_num, double treatment_rate,
			double improvement_rate, Integer empty_beds,
			String duty_officers_id, String deparment_name) {
		super();
		this.room_id = room_id;
		this.room_name = room_name;
		this.deparment_id = deparment_id;
		this.bed_num = bed_num;
		this.principal = principal;
		this.ruyuan_num = ruyuan_num;
		this.chuyuan_num = chuyuan_num;
		this.treatment_rate = treatment_rate;
		this.improvement_rate = improvement_rate;
		this.empty_beds = empty_beds;
		this.duty_officers_id = duty_officers_id;
		this.deparment_name = deparment_name;
	}
	@Override
	public String toString() {
		return "Room [room_id=" + room_id + ", room_name=" + room_name
				+ ", deparment_id=" + deparment_id + ", bed_num=" + bed_num
				+ ", principal=" + principal + ", ruyuan_num=" + ruyuan_num
				+ ", chuyuan_num=" + chuyuan_num + ", treatment_rate="
				+ treatment_rate + ", improvement_rate=" + improvement_rate
				+ ", empty_beds=" + empty_beds + ", duty_officers_id="
				+ duty_officers_id + ", deparment_name=" + deparment_name + "]";
	}
	
	
	
}
