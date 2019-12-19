package zwf.controller;


import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Requisition;
import zwf.service.RequisitionService;


@Controller
public class RequisitionController {

	@Autowired
	private RequisitionService requisitionService;
	
	
	@RequestMapping("select_Requisition")
	@ResponseBody
	public  Map<String,Object> select_Requisition(int pageSize,int pageNumber,
			Integer role_id,Timestamp start_time,String patient_id,String patient_name){
		//System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println("+++++++"+role_id);
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("role_id", role_id);
		param.put("start_time", start_time);
		param.put("patient_id", patient_id);
		param.put("patient_name", patient_name);
		//param.put("patient_id", patient_id);
		int total = this.requisitionService.getCount_Requisition(role_id, start_time, patient_id, patient_name);
		List<Requisition> list = this.requisitionService.select_Requisition(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
}
