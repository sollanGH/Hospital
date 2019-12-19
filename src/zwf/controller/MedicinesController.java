package zwf.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;



import zwf.po.Medicines;
import zwf.service.MedicinesService;

@Controller
public class MedicinesController {

	@Autowired
	private MedicinesService medicinesService;
	
	@RequestMapping("selectMedicines")
	@ResponseBody
	public  Map<String,Object> selectMedicines(String condition,Integer medicines_category){
		/*所需参数*/		
		//int total = this.medicinesService.gstCountMedicines(condition);
		System.out.println("                        "+medicines_category);
		List<Medicines> data = this.medicinesService.selectMedicines(condition,medicines_category);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("value", data);
		//responseMap.put("total", total);		
		System.out.println(data);
		return responseMap;
	}
}
