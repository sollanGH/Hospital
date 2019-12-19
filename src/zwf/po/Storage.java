package zwf.po;

import java.sql.Timestamp;

public class Storage {
	
	private String storage_id;
	private String storage_supply;
	private String storage_check_pharmacist;
	private Timestamp storage_check_date;
	private Timestamp storage_date;
	private String storage_make_pharmacist;
	private Double storage_price;
	private Integer storage_status;
	private String storage_location;
	private String storage_type;
	private double sum_price;
	private String select_id;
	
	private User user;
	private User user1;
	private Storage_list storage_list;
	public String getStorage_id() {
		return storage_id;
	}
	public void setStorage_id(String storage_id) {
		this.storage_id = storage_id;
	}
	public String getStorage_supply() {
		return storage_supply;
	}
	public void setStorage_supply(String storage_supply) {
		this.storage_supply = storage_supply;
	}
	public String getStorage_check_pharmacist() {
		return storage_check_pharmacist;
	}
	public void setStorage_check_pharmacist(String storage_check_pharmacist) {
		this.storage_check_pharmacist = storage_check_pharmacist;
	}
	public Timestamp getStorage_check_date() {
		return storage_check_date;
	}
	public void setStorage_check_date(Timestamp storage_check_date) {
		this.storage_check_date = storage_check_date;
	}
	public Timestamp getStorage_date() {
		return storage_date;
	}
	public void setStorage_date(Timestamp storage_date) {
		this.storage_date = storage_date;
	}
	public String getStorage_make_pharmacist() {
		return storage_make_pharmacist;
	}
	public void setStorage_make_pharmacist(String storage_make_pharmacist) {
		this.storage_make_pharmacist = storage_make_pharmacist;
	}
	public Double getStorage_price() {
		return storage_price;
	}
	public void setStorage_price(Double storage_price) {
		this.storage_price = storage_price;
	}
	public Integer getStorage_status() {
		return storage_status;
	}
	public void setStorage_status(Integer storage_status) {
		this.storage_status = storage_status;
	}
	public String getStorage_location() {
		return storage_location;
	}
	public void setStorage_location(String storage_location) {
		this.storage_location = storage_location;
	}
	public String getStorage_type() {
		return storage_type;
	}
	public void setStorage_type(String storage_type) {
		this.storage_type = storage_type;
	}
	public double getSum_price() {
		return sum_price;
	}
	public void setSum_price(double sum_price) {
		this.sum_price = sum_price;
	}
	public String getSelect_id() {
		return select_id;
	}
	public void setSelect_id(String select_id) {
		this.select_id = select_id;
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
	public Storage_list getStorage_list() {
		return storage_list;
	}
	public void setStorage_list(Storage_list storage_list) {
		this.storage_list = storage_list;
	}
	public Storage(String storage_id, String storage_supply,
			String storage_check_pharmacist, Timestamp storage_check_date,
			Timestamp storage_date, String storage_make_pharmacist,
			Double storage_price, Integer storage_status,
			String storage_location, String storage_type, double sum_price,
			String select_id, User user, User user1, Storage_list storage_list) {
		super();
		this.storage_id = storage_id;
		this.storage_supply = storage_supply;
		this.storage_check_pharmacist = storage_check_pharmacist;
		this.storage_check_date = storage_check_date;
		this.storage_date = storage_date;
		this.storage_make_pharmacist = storage_make_pharmacist;
		this.storage_price = storage_price;
		this.storage_status = storage_status;
		this.storage_location = storage_location;
		this.storage_type = storage_type;
		this.sum_price = sum_price;
		this.select_id = select_id;
		this.user = user;
		this.user1 = user1;
		this.storage_list = storage_list;
	}
	public Storage() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Storage [storage_id=" + storage_id + ", storage_supply="
				+ storage_supply + ", storage_check_pharmacist="
				+ storage_check_pharmacist + ", storage_check_date="
				+ storage_check_date + ", storage_date=" + storage_date
				+ ", storage_make_pharmacist=" + storage_make_pharmacist
				+ ", storage_price=" + storage_price + ", storage_status="
				+ storage_status + ", storage_location=" + storage_location
				+ ", storage_type=" + storage_type + ", sum_price=" + sum_price
				+ ", select_id=" + select_id + ", user=" + user + ", user1="
				+ user1 + ", storage_list=" + storage_list + "]";
	}
	
	
	

}
