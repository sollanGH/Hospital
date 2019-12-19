package zwf.po;

import java.sql.Timestamp;
import java.util.List;

public class Deparment {
    private Integer deparment_id;

    private String deparment_name;

    private String deparment_location;

    private String deparment_description;

    private Timestamp description_create_time;
    
    private String room_name;
    
    private List<Room> rooms;
    
	

	

	

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public List<Room> getRooms() {
		return rooms;
	}

	public void setRooms(List<Room> rooms) {
		this.rooms = rooms;
	}

	public Integer getDeparment_id() {
		return deparment_id;
	}

	public void setDeparment_id(Integer deparment_id) {
		this.deparment_id = deparment_id;
	}

	public String getDeparment_name() {
		return deparment_name;
	}

	public void setDeparment_name(String deparment_name) {
		this.deparment_name = deparment_name;
	}

	public String getDeparment_location() {
		return deparment_location;
	}

	public void setDeparment_location(String deparment_location) {
		this.deparment_location = deparment_location;
	}

	public String getDeparment_description() {
		return deparment_description;
	}

	public void setDeparment_description(String deparment_description) {
		this.deparment_description = deparment_description;
	}

	public Timestamp getDescription_create_time() {
		return description_create_time;
	}

	public void setDescription_create_time(Timestamp description_create_time) {
		this.description_create_time = description_create_time;
	}
	
	public Deparment() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Deparment [deparment_id=" + deparment_id + ", deparment_name="
				+ deparment_name + ", deparment_location=" + deparment_location
				+ ", deparment_description=" + deparment_description
				+ ", description_create_time=" + description_create_time
				+ ", room_name=" + room_name + ", rooms=" + rooms + "]";
	}

	public Deparment(Integer deparment_id, String deparment_name,
			String deparment_location, String deparment_description,
			Timestamp description_create_time, String room_name,
			List<Room> rooms) {
		super();
		this.deparment_id = deparment_id;
		this.deparment_name = deparment_name;
		this.deparment_location = deparment_location;
		this.deparment_description = deparment_description;
		this.description_create_time = description_create_time;
		this.room_name = room_name;
		this.rooms = rooms;
	}

	

	

	

    

	
	
	
}
