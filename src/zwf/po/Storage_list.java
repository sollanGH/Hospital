package zwf.po;



import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Storage_list {
	
	private Integer storage_list_id;
	private String storage_id;
	private Integer medicines_id;
	private Integer storage_number;//入库数量
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date production_date;//生产时间
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date expiring_date;//有效期
	private Double storage_price;
	private String storage_supply;
	private String select_id;
	
	private Medicines medicines;

	public Integer getStorage_list_id() {
		return storage_list_id;
	}

	public void setStorage_list_id(Integer storage_list_id) {
		this.storage_list_id = storage_list_id;
	}

	public String getStorage_id() {
		return storage_id;
	}

	public void setStorage_id(String storage_id) {
		this.storage_id = storage_id;
	}

	public Integer getMedicines_id() {
		return medicines_id;
	}

	public void setMedicines_id(Integer medicines_id) {
		this.medicines_id = medicines_id;
	}

	public Integer getStorage_number() {
		return storage_number;
	}

	public void setStorage_number(Integer storage_number) {
		this.storage_number = storage_number;
	}

	public Date getProduction_date() {
		return production_date;
	}

	public void setProduction_date(Date production_date) {
		this.production_date = production_date;
	}

	public Date getExpiring_date() {
		return expiring_date;
	}

	public void setExpiring_date(Date expiring_date) {
		this.expiring_date = expiring_date;
	}

	public Double getStorage_price() {
		return storage_price;
	}

	public void setStorage_price(Double storage_price) {
		this.storage_price = storage_price;
	}

	public String getStorage_supply() {
		return storage_supply;
	}

	public void setStorage_supply(String storage_supply) {
		this.storage_supply = storage_supply;
	}

	public String getSelect_id() {
		return select_id;
	}

	public void setSelect_id(String select_id) {
		this.select_id = select_id;
	}

	public Medicines getMedicines() {
		return medicines;
	}

	public void setMedicines(Medicines medicines) {
		this.medicines = medicines;
	}

	public Storage_list(Integer storage_list_id, String storage_id,
			Integer medicines_id, Integer storage_number, Date production_date,
			Date expiring_date, Double storage_price, String storage_supply,
			String select_id, Medicines medicines) {
		super();
		this.storage_list_id = storage_list_id;
		this.storage_id = storage_id;
		this.medicines_id = medicines_id;
		this.storage_number = storage_number;
		this.production_date = production_date;
		this.expiring_date = expiring_date;
		this.storage_price = storage_price;
		this.storage_supply = storage_supply;
		this.select_id = select_id;
		this.medicines = medicines;
	}

	public Storage_list() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Storage_list [storage_list_id=" + storage_list_id
				+ ", storage_id=" + storage_id + ", medicines_id="
				+ medicines_id + ", storage_number=" + storage_number
				+ ", production_date=" + production_date + ", expiring_date="
				+ expiring_date + ", storage_price=" + storage_price
				+ ", storage_supply=" + storage_supply + ", select_id="
				+ select_id + ", medicines=" + medicines + "]";
	}

	
	
	
	

}
