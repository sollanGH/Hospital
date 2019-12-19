package zwf.po;

public class Project {
	
	private Integer project_id;
	private String project_py;
	private String project_name;
	private String project_unit;
	private Double project_price;
	private Integer project_category;
	public Integer getProject_id() {
		return project_id;
	}
	public void setProject_id(Integer project_id) {
		this.project_id = project_id;
	}
	public String getProject_py() {
		return project_py;
	}
	public void setProject_py(String project_py) {
		this.project_py = project_py;
	}
	public String getProject_name() {
		return project_name;
	}
	public void setProject_name(String project_name) {
		this.project_name = project_name;
	}
	public String getProject_unit() {
		return project_unit;
	}
	public void setProject_unit(String project_unit) {
		this.project_unit = project_unit;
	}
	public Double getProject_price() {
		return project_price;
	}
	public void setProject_price(Double project_price) {
		this.project_price = project_price;
	}
	public Integer getProject_category() {
		return project_category;
	}
	public void setProject_category(Integer project_category) {
		this.project_category = project_category;
	}
	public Project(Integer project_id, String project_py, String project_name,
			String project_unit, Double project_price, Integer project_category) {
		super();
		this.project_id = project_id;
		this.project_py = project_py;
		this.project_name = project_name;
		this.project_unit = project_unit;
		this.project_price = project_price;
		this.project_category = project_category;
	}
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Project [project_id=" + project_id + ", project_py="
				+ project_py + ", project_name=" + project_name
				+ ", project_unit=" + project_unit + ", project_price="
				+ project_price + ", project_category=" + project_category
				+ "]";
	}
	
	

}
