package zwf.po;

public class Inspection_item_list {
	
	private Integer Inspection_item_id;
	private Integer Inspection_item_list_id;
	private String Inspection_item_list_name;
	private String Inspection_item_list_abbr;
	private String Inspection_item_list_unit;
	private String Inspection_item_list_py;
	private Double Inspection_item_list_upper_limt;
	private Double Inspection_item_list_lower_limit;
	private String Inspection_item_list_introduce;
	private String Inspection_item_list_other_limit;
	public Integer getInspection_item_id() {
		return Inspection_item_id;
	}
	public void setInspection_item_id(Integer inspection_item_id) {
		Inspection_item_id = inspection_item_id;
	}
	public Integer getInspection_item_list_id() {
		return Inspection_item_list_id;
	}
	public void setInspection_item_list_id(Integer inspection_item_list_id) {
		Inspection_item_list_id = inspection_item_list_id;
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
	public String getInspection_item_list_unit() {
		return Inspection_item_list_unit;
	}
	public void setInspection_item_list_unit(String inspection_item_list_unit) {
		Inspection_item_list_unit = inspection_item_list_unit;
	}
	public String getInspection_item_list_py() {
		return Inspection_item_list_py;
	}
	public void setInspection_item_list_py(String inspection_item_list_py) {
		Inspection_item_list_py = inspection_item_list_py;
	}
	public Double getInspection_item_list_upper_limt() {
		return Inspection_item_list_upper_limt;
	}
	public void setInspection_item_list_upper_limt(
			Double inspection_item_list_upper_limt) {
		Inspection_item_list_upper_limt = inspection_item_list_upper_limt;
	}
	public Double getInspection_item_list_lower_limit() {
		return Inspection_item_list_lower_limit;
	}
	public void setInspection_item_list_lower_limit(
			Double inspection_item_list_lower_limit) {
		Inspection_item_list_lower_limit = inspection_item_list_lower_limit;
	}
	public String getInspection_item_list_introduce() {
		return Inspection_item_list_introduce;
	}
	public void setInspection_item_list_introduce(
			String inspection_item_list_introduce) {
		Inspection_item_list_introduce = inspection_item_list_introduce;
	}
	public String getInspection_item_list_other_limit() {
		return Inspection_item_list_other_limit;
	}
	public void setInspection_item_list_other_limit(
			String inspection_item_list_other_limit) {
		Inspection_item_list_other_limit = inspection_item_list_other_limit;
	}
	public Inspection_item_list(Integer inspection_item_id,
			Integer inspection_item_list_id, String inspection_item_list_name,
			String inspection_item_list_abbr, String inspection_item_list_unit,
			String inspection_item_list_py,
			Double inspection_item_list_upper_limt,
			Double inspection_item_list_lower_limit,
			String inspection_item_list_introduce,
			String inspection_item_list_other_limit) {
		super();
		Inspection_item_id = inspection_item_id;
		Inspection_item_list_id = inspection_item_list_id;
		Inspection_item_list_name = inspection_item_list_name;
		Inspection_item_list_abbr = inspection_item_list_abbr;
		Inspection_item_list_unit = inspection_item_list_unit;
		Inspection_item_list_py = inspection_item_list_py;
		Inspection_item_list_upper_limt = inspection_item_list_upper_limt;
		Inspection_item_list_lower_limit = inspection_item_list_lower_limit;
		Inspection_item_list_introduce = inspection_item_list_introduce;
		Inspection_item_list_other_limit = inspection_item_list_other_limit;
	}
	public Inspection_item_list() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Inspection_item_list [Inspection_item_id=" + Inspection_item_id
				+ ", Inspection_item_list_id=" + Inspection_item_list_id
				+ ", Inspection_item_list_name=" + Inspection_item_list_name
				+ ", Inspection_item_list_abbr=" + Inspection_item_list_abbr
				+ ", Inspection_item_list_unit=" + Inspection_item_list_unit
				+ ", Inspection_item_list_py=" + Inspection_item_list_py
				+ ", Inspection_item_list_upper_limt="
				+ Inspection_item_list_upper_limt
				+ ", Inspection_item_list_lower_limit="
				+ Inspection_item_list_lower_limit
				+ ", Inspection_item_list_introduce="
				+ Inspection_item_list_introduce
				+ ", Inspection_item_list_other_limit="
				+ Inspection_item_list_other_limit + "]";
	}
	
	
}
