package zwf.controller;


import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zwf.po.Medical_Orders_Action;
import zwf.service.Medical_Orders_ActionService;


@Controller
public class Medical_Orders_ActionController {

	@Autowired
	private Medical_Orders_ActionService medical_Orders_ActionServiceService;
	
	
	@RequestMapping("select_today_Action_Medical_Orders")
	@ResponseBody
	public  Map<String,Object> select_today_Action_Medical_Orders(int pageSize,int pageNumber,String deparment_id,Integer role_id,
			Timestamp start_time,String user_work_id){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("deparment_id", deparment_id);
		param.put("role_id", role_id);
		param.put("start_time", start_time);
		param.put("user_work_id", user_work_id);
		//param.put("patient_id", patient_id);
		int total = this.medical_Orders_ActionServiceService.getCount_today_Action_Medical_Orders(deparment_id, role_id, start_time , user_work_id);
		List<Medical_Orders_Action> list = this.medical_Orders_ActionServiceService.select_today_Action_Medical_Orders(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
}
