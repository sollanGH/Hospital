package zwf.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import zwf.po.Inspection_item;
import zwf.service.Inspection_itemService;


@Controller
public class Inspection_itemController {

	@Autowired
	private Inspection_itemService inspection_itemService;
	
	
	@RequestMapping("select_Inspection_item")
	@ResponseBody
	public  Map<String,Object> select_Requisition(int pageSize,int pageNumber){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		//param.put("patient_id", patient_id);
		int total = this.inspection_itemService.getCount_Inspection_item();
		List<Inspection_item> list = this.inspection_itemService.select_Inspection_item(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("select_Inspection_item1")
	@ResponseBody
	public  Map<String,Object> selectDeparment(){
		int total = this.inspection_itemService.getCount_Inspection_item();
		String condition = null;
		List<Inspection_item> data = this.inspection_itemService.select_condition_Inspection_item(condition);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		responseMap.put("total", total);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/add_Inspection_item",method=RequestMethod.POST)
	public String add_Inspection_item(Inspection_item inspection_item){
		System.out.println("get addDeparment");
		int row = this.inspection_itemService.add_Inspection_item(inspection_item);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/edit_Inspection_item",method=RequestMethod.POST)
	public String edit_Inspection_item(Inspection_item inspection_item){
		System.out.println("get addDeparment");
		int row = this.inspection_itemService.edit_Inspection_item(inspection_item);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@RequestMapping("select_condition_Inspection_item")
	@ResponseBody
	public  Map<String,Object> select_condition_Inspection_item(String condition){
		/*所需参数*/		
		//int total = this.medicinesService.gstCountMedicines(condition);
		List<Inspection_item> data = this.inspection_itemService.select_condition_Inspection_item(condition);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("value", data);
		//responseMap.put("total", total);		
		System.out.println(data);
		return responseMap;
	}
}
