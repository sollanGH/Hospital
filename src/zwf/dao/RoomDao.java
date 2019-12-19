package zwf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Room;

public interface RoomDao {
	/**
	 * 查找所有房间有关的信息
	 * @param param
	 * @return
	 */
	public List<Room> selectAllRoom(Map<String,Object> param);
	/**
	 * 获取所有房间有关的页数
	 * @param room_name 所查找的房间名
	 * @param deparment_id 所查找的科室id
	 * @return
	 */
	public int getCountRoom(@Param("room_name") String room_name,
			@Param("deparment_id") Integer deparment_id);
		
	/**
	 * 根据科室id获取房间id，名
	 * @param deparment_id 下拉框中的科室id
	 * @return
	 */
	public List<Room> selectAllRoomid(@Param("deparment_id") String deparment_id);
	
	/**
	 * 返回科室下对应的房间数量，用于下拉框的索引
	 * @param deparment_id 下拉框中的科室id
	 * @return
	 */
	public int getCountRoomid(@Param("deparment_id") String deparment_id);
	
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
	
	/**
	 * 获取已选中的下拉框值
	 * @param deparment_id
	 * @return
	 */
	public List<Room> selecthavingRoomid(@Param("deparment_id") String deparment_id);
	public int getCounthavingRoomid(@Param("deparment_id") String deparment_id);
	
	
	
	
	
	/**
	 * 删
	 * @param room_id
	 * @return
	 */
	public int deleteRoom(@Param("room_id") String room_id);
	
	/**
	 * 增
	 * @param room
	 * @return
	 */
	public int addRoom(Room room);
	

	/**
	 *更 
	 * @param room
	 * @return
	 */
	public int updateRoom(Room room);
	
	
	
}
