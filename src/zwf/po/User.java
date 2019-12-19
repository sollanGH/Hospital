package zwf.po;

public class User {
	private Integer user_id;
	private Integer role_id;
	private String login_name;
	private String pass_word;
	private String user_male;
	private String user_adress;
	private String user_work_id;
	private String user_name;
	private String phone;
	private Integer deparment_id;
	private String role_name;
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}
	public String getPass_word() {
		return pass_word;
	}
	public void setPass_word(String pass_word) {
		this.pass_word = pass_word;
	}
	public String getUser_male() {
		return user_male;
	}
	public void setUser_male(String user_male) {
		this.user_male = user_male;
	}
	public String getUser_adress() {
		return user_adress;
	}
	public void setUser_adress(String user_adress) {
		this.user_adress = user_adress;
	}
	public String getUser_work_id() {
		return user_work_id;
	}
	public void setUser_work_id(String user_work_id) {
		this.user_work_id = user_work_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getDeparment_id() {
		return deparment_id;
	}
	public void setDeparment_id(Integer deparment_id) {
		this.deparment_id = deparment_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public User(Integer user_id, Integer role_id, String login_name,
			String pass_word, String user_male, String user_adress,
			String user_work_id, String user_name, String phone,
			Integer deparment_id, String role_name) {
		super();
		this.user_id = user_id;
		this.role_id = role_id;
		this.login_name = login_name;
		this.pass_word = pass_word;
		this.user_male = user_male;
		this.user_adress = user_adress;
		this.user_work_id = user_work_id;
		this.user_name = user_name;
		this.phone = phone;
		this.deparment_id = deparment_id;
		this.role_name = role_name;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", role_id=" + role_id
				+ ", login_name=" + login_name + ", pass_word=" + pass_word
				+ ", user_male=" + user_male + ", user_adress=" + user_adress
				+ ", user_work_id=" + user_work_id + ", user_name=" + user_name
				+ ", phone=" + phone + ", deparment_id=" + deparment_id
				+ ", role_name=" + role_name + "]";
	}
	
	
	
	
	
}
