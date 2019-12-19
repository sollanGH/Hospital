package zwf.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Inspection_list;
import zwf.service.Inspection_listService;
import zwf.test.Printf_Inspection;
import zwf.test.Printf_Inspection.ZGLSZBean_Inspection;


@Controller
public class Inspection_listController {

	@Autowired
	private Inspection_listService inspection_listService;
	
	
	
	@RequestMapping("select_Inspection_list")
	@ResponseBody
	public  Map<String,Object> select_Inspection_list(int pageSize,int pageNumber,Inspection_list inspection_list){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		System.out.println(inspection_list.getInspection_id());
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("inspection_list",inspection_list);
		param.put("Inspection_id",inspection_list.getInspection_id());
		//param.put("patient_id", patient_id);
		int total = this.inspection_listService.getCount_Inspection_list(inspection_list);
		List<Inspection_list> list = this.inspection_listService.select_Inspection_list(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		//System.out.println(list);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/edit_Inspection_list",method=RequestMethod.POST)
	public String edit_Inspection_list(Inspection_list inspection_list){
		int row = this.inspection_listService.edit_Inspection_list(inspection_list);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/count_action_Inspection_list",method=RequestMethod.POST)
	public int count_action_Inspection_list(Inspection_list inspection_list){
		int row = this.inspection_listService.count_action_Inspection_list(inspection_list);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
		
		
	}
	
	
	@RequestMapping("printf_select_Inspection_list")
	@ResponseBody
	public  Map<String,Object> printf_select_Inspection_list(Inspection_list inspection_list){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		System.out.println(inspection_list.getInspection_id());
		Map<String, Object> param=new HashMap<String, Object>();		
		
		param.put("inspection_list",inspection_list);
		param.put("Inspection_id",inspection_list.getInspection_id());
		//param.put("patient_id", patient_id);
		List<Inspection_list> list = this.inspection_listService.printf_select_Inspection_list(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);		
		System.out.println(list);
		
		Printf_Inspection printf_Inspection = new Printf_Inspection();
		ZGLSZBean_Inspection zglszBean = new ZGLSZBean_Inspection();
		zglszBean.setSpname(list.get(0).getBed().getBed_name());
	   	 //System.out.println(list.get(0).getBed().getBed_name());
	   	 zglszBean.setRqfw(list.get(0).getPatient().getPatient_id());
	   	 zglszBean.setSncode(list.get(0).getDeparment().getDeparment_name());
	   	 zglszBean.setSnname(list.get(0).getPatient().getPatient_name());
	   	 zglszBean.setSpcode(list.get(0).getPatient().getPatient_meal());
		
	   	List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
		for(int i=0;i<list.size()-1;i++){
			
			Map<String, Object> map = new HashMap<String, Object>(); 
			map.put("KSRQ", list.get(i).getInspection_item_list_abbr());
			map.put("YZNR", list.get(i).getInspection_item_list_name());
			map.put("ZSQZ", list.get(i).getInspection_item_result());
			map.put("ZXSJ", list.get(i).getInspection_item_list_unit());
			if(Double.valueOf(list.get(i).getInspection_item_list_lower_limit())!=null){
				map.put("ZSHS", list.get(i).getInspection_item_list_lower_limit()+"~"+list.get(i).getInspection_item_list_upper_limt());
			}
			listMap.add(map);
	    	 zglszBean.setArray_list(listMap);
		}
		
		List<Map<String, Object>> listMap1 = new ArrayList<Map<String,Object>>();
		String result = list.get(0).getInspection().getInspection_suggest();
		List<String> result1 = Arrays.asList(result.split("<"));
		for(int i=1;i<result1.size();i++){
			Map<String, Object> map = new HashMap<String, Object>(); 
			map.put("ABCD", result1.get(i));
			listMap1.add(map);
	    	 zglszBean.setArray_list123(listMap1);
		}
		
		try {
	   		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hhmmss");  
	   		 String today = df.format(new Date()); 
	   		 System.out.println(today);
	   		printf_Inspection.addTable("C:\\Users\\13926\\Desktop\\printf\\"+list.get(0).getPatient().getPatient_name()+"检验单"+today+".pdf", zglszBean);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	   	
		return responseMap;
		
	}
	
}
