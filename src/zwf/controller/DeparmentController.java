package zwf.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Deparment;
import zwf.service.DeparmentService;

@Controller
public class DeparmentController {
	@Autowired
	private DeparmentService deparmentService;
	
	/*
	 * 数据列表
	 * 
	 */
	@RequestMapping(value="/toDeparmentList")
	public String toDeparmentList(){
		return "Deparment";
	}
	/*
	 *
	 * 添加数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/addDeparment",method=RequestMethod.POST)
	public String addUsaddDeparmenter(Deparment deparment){
		System.out.println("get addDeparment");
		int row = this.deparmentService.addDeparment(deparment);
		System.out.println(deparment);
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
	 * 更新用户
	 * 
	 */
	
	@RequestMapping(value="/updateDeparment",method=RequestMethod.POST)
	@ResponseBody
	public String updateDeparment(Deparment deparment){
		System.out.println("get updateDeparment");
		int row = this.deparmentService.updateDeparment(deparment);
		System.out.println(deparment);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@RequestMapping("selectDeparmentAll")
	@ResponseBody
	public  Map<String,Object> selectDeparmentAll(int pageSize,int pageNumber){
		//所需参数
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);

		
		int total = deparmentService.getCountDeparment();
		List<Deparment> list = deparmentService.selectAllDeparment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		return responseMap;
	}
	/**
	 * 一对多
	 * @param pageSize
	 * @param pageNumber
	 * @return
	 */
	@RequestMapping("getAllDeparment")
	@ResponseBody
	public  Map<String,Object> getAllDeparment(int pageSize,int pageNumber){
		//所需参数
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);

		
		int total = deparmentService.getCountDeparment();
		List<Deparment> list = deparmentService.getAllDeparment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		//list.get(1).getRooms().get(0).getBed_num();
		
		responseMap.put("rows", list);
		responseMap.put("total", total);
		return responseMap;
	}
	/**
	 * 获取下拉科室列表
	 * @return
	 */
	@RequestMapping("selectDeparment")
	@ResponseBody
	public  Map<String,Object> selectDeparment(){
		int total = deparmentService.getCountDeparment();
		List<Deparment> data = deparmentService.selectDeparment();
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		responseMap.put("total", total);
		return responseMap;
	}
	
	@RequestMapping("tttttttt")
	@ResponseBody
	public  Map<String,Object> tttttttt(String deparment_id){
		System.out.println(deparment_id);
		//int total = deparmentService.getCountDeparment();
		List<Deparment> data = deparmentService.selectDeparment();
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("value", data);
		//responseMap.put("length", total);
		return responseMap;
		
	}
	
	@RequestMapping("selectDeparmentid")
	@ResponseBody
	public  Map<String,Object> selectDeparmentid(String deparment_id){
		
		List<Deparment> data = deparmentService.selectDeparmentid(deparment_id);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		return responseMap;
	}
	
	/*
	 * 
	 * 删除数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/deleteDeparmentList",method=RequestMethod.POST)
	public String deleteDeparmentList(String deparment_id){
		System.out.println("get deleteDeparmentList");
		System.out.println(deparment_id);
		int row = this.deparmentService.deleteDeparment(deparment_id);
		System.out.println(deparment_id);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	}

