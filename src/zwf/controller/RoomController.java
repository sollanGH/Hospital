package zwf.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import zwf.po.Room;
import zwf.service.RoomService;

@Controller
public class RoomController {
	@Autowired
	private RoomService roomService;
	/*
	 * 列表页面
	 * 
	 */
	@RequestMapping(value="/toRoomList")
	public String toRoomList(){
		return "Room";
	}
	/*
	 *
	 * 添加数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/addRoom",method=RequestMethod.POST)
	public String addRoom(Room room){
		System.out.println("get addRoom");
		int row = this.roomService.addRoom(room);
		System.out.println(room);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	/*
	 * 
	 * 更新数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/updateRoom",method=RequestMethod.POST)
	public String updateRoom(Room room){
		System.out.println(room);
		System.out.println("get updateRoom");
		int row = this.roomService.updateRoom(room);
		System.out.println(room);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	/**
	 * 查找所有房间有关的信息
	 * @param pageSize   	每页的记录行数
	 * @param pageNumber 	 默认第几页
	 * @param room_name   	所查找的房间名
	 * @param deparment_id	所查找的部门id
	 * @return
	 */
	@RequestMapping("selectRoomAll")
	@ResponseBody
	public  Map<String,Object> selectRoomAll(int pageSize,int pageNumber,String room_name,Integer deparment_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("room_name", room_name);
		param.put("deparment_id", deparment_id);
		
		int total = roomService.getCountRoom(room_name, deparment_id);
		List<Room> list = roomService.selectAllRoom(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	/**
	 * 通过科室id查找对应的房间
	 * @param deparment_id
	 * @return
	 */
	@RequestMapping("selectRoomAllid")
	@ResponseBody
	public  Map<String,Object> selectRoomAll(String deparment_id){
		/*所需参数*/		
		int total = roomService.getCountRoomid(deparment_id);
		List<Room> data = roomService.selectAllRoomid(deparment_id);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(data);
		return responseMap;
	}
	@RequestMapping("aaaaaa")
	@ResponseBody
	public  Map<String,Object> aaaaa(String deparment_id){
		/*所需参数*/		
		//int total = roomService.getCountRoomid(deparment_id);
		List<Room> data = roomService.selectAllRoomid(deparment_id);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("value", data);
		//responseMap.put("total", total);
		//System.out.println("total:"+total);
		System.out.println(data);
		return responseMap;
	}
	/*
	 * 
	 * 删除数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/deleteRoomList",method=RequestMethod.POST)
	public String deleteRoomList(String room_id){
		System.out.println("get deleteRoomList");
		int row = this.roomService.deleteRoom(room_id);
		System.out.println(room_id);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	/**
	 * 通过科室id查找空余的房间
	 * @param deparment_id
	 * @return
	 */
	@RequestMapping("selectUseRoomAll")
	@ResponseBody
	public  Map<String,Object> selectUseRoomAll(String deparment_id){
		/*所需参数*/		
		int total = roomService.getCountUseRoomid(deparment_id);
		List<Room> data = roomService.selectUseRoomid(deparment_id);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(data);
		return responseMap;
	}
	
	
	}

