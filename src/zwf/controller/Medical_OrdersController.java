package zwf.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Medical_Orders;
import zwf.service.Medical_OrdersService;


@Controller
public class Medical_OrdersController {

	@Autowired
	private Medical_OrdersService medical_OrdersService;
	
	@RequestMapping("buildYiZhu")
	@ResponseBody
	public  int buildYiZhu(String patient_id,Medical_Orders medical_Orders){
		/*所需参数*/
		int total = this.medical_OrdersService.buildYiZhu(patient_id, medical_Orders);
		return total;
	}
	@RequestMapping("showMedical_Orders_Id")
	@ResponseBody
	public  int showMedical_Orders_Id(String patient_id){
		/*所需参数*/
		int total = this.medical_OrdersService.showMedical_Orders_Id(patient_id);
		return total;
	}
	@RequestMapping("select_Action_Medical_Orders")
	@ResponseBody
	public  Map<String,Object> select_Action_Medical_Orders(int pageSize,int pageNumber,String deparment_id,Integer role_id){
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
		//param.put("patient_id", patient_id);
		int total = this.medical_OrdersService.getCount_Action_Medical_Orders(deparment_id,role_id);
		List<Medical_Orders> list = this.medical_OrdersService.select_Action_Medical_Orders(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
}
