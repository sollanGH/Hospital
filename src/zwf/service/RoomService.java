package zwf.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Room;
public interface RoomService {
	
	public List<Room> selectAllRoom(Map<String,Object> param);
	
	public List<Room> selectAllRoomid(@Param("deparment_id") String deparment_id);
	
	public int getCountRoom(@Param("room_name") String room_name,
			@Param("deparment_id") Integer deparment_id);
	
	public int getCountRoomid(@Param("deparment_id") String deparment_id);
	
	public int deleteRoom(@Param("room_id") String room_id);
	
	public int addRoom(Room room);
	
	public int updateRoom(Room room);
	/**
	 * 根据科室id获取能用的房间id，名
	 * @param deparment_id 下拉框中的科室id
	 * @return
	 */
	public List<Room> selectUseRoomid(@Param("deparment_id") String deparment_id);
	
	/**
	 * 返回科室下能用的房间数量，用于下拉框的索引
	 * @param deparment_id 下拉框中的科室id
	 * @return
	 */
	public int getCountUseRoomid(@Param("deparment_id") String deparment_id);
	
}
