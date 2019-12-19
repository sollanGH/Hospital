package zwf.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import zwf.po.Inspection_item_list;
import zwf.service.Inspection_item_listService;


@Controller
public class Inspection_item_listController {

	@Autowired
	private Inspection_item_listService inspection_item_listService;
	
	
	@RequestMapping("select_Inspection_item_list")
	@ResponseBody
	public  Map<String,Object> select_Inspection_item_list(int pageSize,int pageNumber,Inspection_item_list inspection_item_list){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("Inspection_item_id", inspection_item_list.getInspection_item_id());
		//param.put("patient_id", patient_id);
		int total = this.inspection_item_listService.getCount_Inspection_item_list(inspection_item_list);
		List<Inspection_item_list> list = this.inspection_item_listService.select_Inspection_item_list(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/add_Inspection_item_list",method=RequestMethod.POST)
	public String add_Inspection_item_list(Inspection_item_list inspection_item_list){
		System.out.println("get addDeparment");
		int row = this.inspection_item_listService.add_Inspection_item_list(inspection_item_list);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/edit_Inspection_item_list",method=RequestMethod.POST)
	public String edit_Inspection_item_list(Inspection_item_list inspection_item_list){
		System.out.println("get addDeparment");
		int row = this.inspection_item_listService.edit_Inspection_item_list(inspection_item_list);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
}
