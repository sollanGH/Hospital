package zwf.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Bed;
import zwf.po.Room;
public interface BedService {
	
	/**
	 * 查找所有床位有关的信息
	 * @param param
	 * @return
	 */
	public List<Bed> selectAllBed(Map<String,Object> param);
	
	/**
	 *  获取所有床位有关的页数
	 * @param bed_name
	 * @param Room_id
	 * @param deparment_id
	 * @return
	 */	
	public int getCountBed(@Param("bed_name") String bed_name,
			@Param("room_id") Integer room_id,
			@Param("deparment_id") Integer deparment_id,
			@Param("patient_name") String patient_name,
			@Param("bed_state") Boolean bed_state);
	
	/**
	 * 根据科室id,房间id获取房间id,名
	 * @param room_id 下拉框中的房间id
	 * @return
	 */
	public List<Room> selectAllBedid(@Param("room_id") String room_id);
	
	/**
	 * 返回科室下对应的房间数量，用于下拉框的索引
	 * @param deparment_id 下拉框中的科室id
	 * @param room_id 下拉框中的房间id
	 * @return
	 */
	public int getCountBedid(@Param("room_id") String room_id);
	/**
	 * 根据房间id获取空余房间id,名
	 * @param room_id 下拉框中的房间id
	 * @return
	 */
	public List<Room> selectAllUseBedid(@Param("room_id") String room_id);
	
	/**
	 * 返回科室下空余的房间数量，用于下拉框的索引
	 * @param room_id 下拉框中的房间id
	 * @return
	 */
	public int getCountUseBedid(@Param("room_id") String room_id);
	/**
	 * 更改房间状态
	 * @param bed_id
	 * @return
	 */
	public int updateRoomState(@Param("bed_id") Integer bed_id);
}
