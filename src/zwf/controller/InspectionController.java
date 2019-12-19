package zwf.controller;


import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Inspection;
import zwf.po.Inspection_list;
import zwf.service.InspectionService;


@Controller
public class InspectionController {

	@Autowired
	private InspectionService inspectionService;
	
	@RequestMapping(value="/Inspection_check")
	public String toInspection_check(){
		return "Inspection_check";
	}
	@RequestMapping(value="/Inspection_action")
	public String toInspection_action(){
		return "Inspection_action";
	}
	@RequestMapping(value="/Inspection_show")
	public String toInspection_show(){
		return "Inspection_show";
	}
	
	@RequestMapping("select_Inspection")
	@ResponseBody
	public  Map<String,Object> select_Inspection(int pageSize,int pageNumber,Integer inspection_item_id,
			Integer select_deparment_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,Inspection inspection){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		System.out.println(inspection_item_id+"______________");
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("inspection_item_id", inspection_item_id);
		param.put("select_deparment_id", select_deparment_id);
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		//param.put("patient_id", patient_id);
		int total = this.inspectionService.getCount_Inspection(inspection);
		List<Inspection> list = this.inspectionService.select_Inspection(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/add_Inspection",method=RequestMethod.POST)
	public String add_Inspection(Inspection inspection){
		int row = this.inspectionService.add_Inspection(inspection);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/check_Inspection",method=RequestMethod.POST)
	public String check_Inspection(Inspection inspection){
		int row = this.inspectionService.check_Inspection(inspection);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@RequestMapping("select_action_Inspection")
	@ResponseBody
	public  Map<String,Object> select_action_Inspection(int pageSize,int pageNumber,Integer inspection_item_id,
			Integer select_deparment_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,Inspection inspection){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		System.out.println(inspection_item_id+"______________");
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("inspection_item_id", inspection_item_id);
		param.put("select_deparment_id", select_deparment_id);
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		//param.put("patient_id", patient_id);
		int total = this.inspectionService.getCount_action_Inspection(inspection);
		List<Inspection> list = this.inspectionService.select_action_Inspection(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	
	@ResponseBody
	@RequestMapping(value="/action_Inspection",method=RequestMethod.POST)
	public String action_Inspection(Inspection inspection,Inspection_list inspection_list){
		System.out.println(inspection_list.getInspection_id()+"111111111111");
		int row = this.inspectionService.action_Inspection(inspection,inspection_list);
		
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/action_Inspection2",method=RequestMethod.POST)
	public String action_Inspection2(Inspection inspection){
		int row = this.inspectionService.action_Inspection2(inspection);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/add_suggest_Inspection",method=RequestMethod.POST)
	public String add_suggest_Inspection(Inspection inspection){
		int row = this.inspectionService.add_suggest_Inspection(inspection);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	
	@RequestMapping("select_show_Inspection")
	@ResponseBody
	public  Map<String,Object> select_show_Inspection(int pageSize,int pageNumber,Integer inspection_item_id,
			Integer select_deparment_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,Inspection inspection,
			Integer role_id,String user_work_id){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		System.out.println(inspection_item_id+"______________");
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("inspection_item_id", inspection_item_id);
		param.put("select_deparment_id", select_deparment_id);
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		param.put("role_id", role_id);
		param.put("user_work_id", user_work_id);
		//param.put("patient_id", patient_id);
		int total = this.inspectionService.getCount_show_Inspection(inspection);
		List<Inspection> list = this.inspectionService.select_show_Inspection(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/show_suggest_Inspection",method=RequestMethod.GET,produces="text/html;charset=UTF-8")
	public String show_suggest_Inspection(Inspection inspection){
		String row = this.inspectionService.show_suggest_Inspection(inspection);
		System.out.println(row);
		
		return row;
		
		
	}
}
