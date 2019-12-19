package zwf.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Bed;
import zwf.po.Room;
import zwf.service.BedService;


@Controller
public class BedController {
	@Autowired
	private BedService bedService;
	/*
	 * 列表页面
	 * 
	 */
	@RequestMapping(value="/toBedList")
	public String toBedList(){
		return "Bed";
	}
	/*
	 *
	 * 添加数据
	 * 
	 */
	/*@ResponseBody
	@RequestMapping(value="/addBed",method=RequestMethod.POST)
	public String addBed(Bed bed){
		System.out.println("get addBed");
		int row = this.bedService.addRoom(bed);
		System.out.println(bed);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}*/
	/*
	 * 
	 * 更新数据
	 * 
	 */
	/*@ResponseBody
	@RequestMapping(value="/updateBed",method=RequestMethod.POST)
	public String updateBed(Bed bed){
		System.out.println(bed);
		System.out.println("get updateBed");
		int row = this.roomService.updateRoom(bed);
		System.out.println(bed);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}*/
	/**
	 *  查找所有房间有关的信息
	 * @param pageSize   	每页的记录行数
	 * @param pageNumber 	 默认第几页
	 * @param bed_name      所查找的床名
	 * @param deparment_id  所查找的科室id
	 * @param room_id 		所查找的房间id
	 * @return
	 */
	
	@RequestMapping("selectBedAll")
	@ResponseBody
	public  Map<String,Object> selectBedAll(int pageSize,int pageNumber,String bed_name,
			Integer room_id,Integer deparment_id,Boolean bed_state,String patient_name){
		/*所需参数*/
		System.out.println("++++++++++++"+bed_state);
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("bed_name", bed_name);
		param.put("deparment_id", deparment_id);
		param.put("bed_state", bed_state);
		param.put("patient_name", patient_name);
		param.put("room_id", room_id);
		int total = this.bedService.getCountBed(bed_name, room_id, deparment_id,patient_name,bed_state);
		List<Bed> list = this.bedService.selectAllBed(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	/*
	 * 
	 * 删除数据
	 * 
	 */
	/*@ResponseBody
	@RequestMapping(value="/deleteBedList",method=RequestMethod.POST)
	public String deleteBedList(String bed_id){
		System.out.println("get deleteBedList");
		int row = this.roomService.deleteRoom(bed_id);
		System.out.println(bed_id);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}*/
	/**
	 * 通过房间id查找对应的床
	 * @param room_id
	 * @return
	 */
	@RequestMapping("selectBedAllid")
	@ResponseBody
	public  Map<String,Object> selectBedAllid(String room_id){
		/*所需参数*/		
		int total = this.bedService.getCountBedid(room_id);
		List<Room> data = this.bedService.selectAllBedid(room_id);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		return responseMap;
	}
	/**
	 * 通过房间id查找空余的床
	 * @param room_id
	 * @return
	 */
	@RequestMapping("selectUseBedAllid")
	@ResponseBody
	public  Map<String,Object> selectUseBedAllid(String room_id){
		/*所需参数*/		
		int total = this.bedService.getCountUseBedid(room_id);
		List<Room> data = this.bedService.selectAllUseBedid(room_id);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		return responseMap;
	}
	}

