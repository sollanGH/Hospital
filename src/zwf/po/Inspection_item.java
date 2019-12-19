package zwf.po;

public class Inspection_item {
	
	private Integer Inspection_item_id;
	private String Inspection_item_name;
	private String Inspection_item_py;
	private Double Inspection_item_pirce;
	private String Inspection_item_demand;
	private String condition;
	private String Inspection_item_unit;
	public Integer getInspection_item_id() {
		return Inspection_item_id;
	}
	public void setInspection_item_id(Integer inspection_item_id) {
		Inspection_item_id = inspection_item_id;
	}
	public String getInspection_item_name() {
		return Inspection_item_name;
	}
	public void setInspection_item_name(String inspection_item_name) {
		Inspection_item_name = inspection_item_name;
	}
	public String getInspection_item_py() {
		return Inspection_item_py;
	}
	public void setInspection_item_py(String inspection_item_py) {
		Inspection_item_py = inspection_item_py;
	}
	public Double getInspection_item_pirce() {
		return Inspection_item_pirce;
	}
	public void setInspection_item_pirce(Double inspection_item_pirce) {
		Inspection_item_pirce = inspection_item_pirce;
	}
	public String getInspection_item_demand() {
		return Inspection_item_demand;
	}
	public void setInspection_item_demand(String inspection_item_demand) {
		Inspection_item_demand = inspection_item_demand;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getInspection_item_unit() {
		return Inspection_item_unit;
	}
	public void setInspection_item_unit(String inspection_item_unit) {
		Inspection_item_unit = inspection_item_unit;
	}
	public Inspection_item() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Inspection_item [Inspection_item_id=" + Inspection_item_id
				+ ", Inspection_item_name=" + Inspection_item_name
				+ ", Inspection_item_py=" + Inspection_item_py
				+ ", Inspection_item_pirce=" + Inspection_item_pirce
				+ ", Inspection_item_demand=" + Inspection_item_demand
				+ ", condition=" + condition + ", Inspection_item_unit="
				+ Inspection_item_unit + "]";
	}
	
	

}
