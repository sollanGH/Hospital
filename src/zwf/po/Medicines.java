package zwf.po;

public class Medicines {

	private Integer medicines_id;
	private String medicines_py;
	private String medicines_name;
	private String medicines_form;
	private String medicines_specification;
	private Integer medicines_number;
	private String medicines_unit;
	private Double medicines_price;
	private String condition;
	private String medicines_turn;
	private Integer medicines_category;
	public Integer getMedicines_id() {
		return medicines_id;
	}
	public void setMedicines_id(Integer medicines_id) {
		this.medicines_id = medicines_id;
	}
	public String getMedicines_py() {
		return medicines_py;
	}
	public void setMedicines_py(String medicines_py) {
		this.medicines_py = medicines_py;
	}
	public String getMedicines_name() {
		return medicines_name;
	}
	public void setMedicines_name(String medicines_name) {
		this.medicines_name = medicines_name;
	}
	public String getMedicines_form() {
		return medicines_form;
	}
	public void setMedicines_form(String medicines_form) {
		this.medicines_form = medicines_form;
	}
	public String getMedicines_specification() {
		return medicines_specification;
	}
	public void setMedicines_specification(String medicines_specification) {
		this.medicines_specification = medicines_specification;
	}
	public Integer getMedicines_number() {
		return medicines_number;
	}
	public void setMedicines_number(Integer medicines_number) {
		this.medicines_number = medicines_number;
	}
	public String getMedicines_unit() {
		return medicines_unit;
	}
	public void setMedicines_unit(String medicines_unit) {
		this.medicines_unit = medicines_unit;
	}
	public Double getMedicines_price() {
		return medicines_price;
	}
	public void setMedicines_price(Double medicines_price) {
		this.medicines_price = medicines_price;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getMedicines_turn() {
		return medicines_turn;
	}
	public void setMedicines_turn(String medicines_turn) {
		this.medicines_turn = medicines_turn;
	}
	public Integer getMedicines_category() {
		return medicines_category;
	}
	public void setMedicines_category(Integer medicines_category) {
		this.medicines_category = medicines_category;
	}
	@Override
	public String toString() {
		return "Medicines [medicines_id=" + medicines_id + ", medicines_py="
				+ medicines_py + ", medicines_name=" + medicines_name
				+ ", medicines_form=" + medicines_form
				+ ", medicines_specification=" + medicines_specification
				+ ", medicines_number=" + medicines_number
				+ ", medicines_unit=" + medicines_unit + ", medicines_price="
				+ medicines_price + ", condition=" + condition
				+ ", medicines_turn=" + medicines_turn
				+ ", medicines_category=" + medicines_category + "]";
	}
	public Medicines() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Medicines(Integer medicines_id, String medicines_py,
			String medicines_name, String medicines_form,
			String medicines_specification, Integer medicines_number,
			String medicines_unit, Double medicines_price, String condition,
			String medicines_turn, Integer medicines_category) {
		super();
		this.medicines_id = medicines_id;
		this.medicines_py = medicines_py;
		this.medicines_name = medicines_name;
		this.medicines_form = medicines_form;
		this.medicines_specification = medicines_specification;
		this.medicines_number = medicines_number;
		this.medicines_unit = medicines_unit;
		this.medicines_price = medicines_price;
		this.condition = condition;
		this.medicines_turn = medicines_turn;
		this.medicines_category = medicines_category;
	}
	
	
	
	
}
