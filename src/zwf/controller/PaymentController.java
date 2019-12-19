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
import zwf.po.Payment;
import zwf.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	/*
	 *
	 * 添加数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/addPayment_message",method=RequestMethod.POST)
	public int addPayment_message(Payment payment){		
		int row = this.paymentService.addPayment_message(payment);
		return row;
				
	}
	@ResponseBody
	@RequestMapping(value="/add_medical_Payment_message",method=RequestMethod.POST)
	public int add_medical_Payment_message(Payment payment){		
		int row = this.paymentService.add_medical_Payment_message(payment);
		return row;
				
	}
	
	@ResponseBody
	@RequestMapping(value="/zuofri_Payment_message",method=RequestMethod.POST)
	public int zuofri_Payment_message(Payment payment){		
		int row = this.paymentService.zuofri_Payment_message(payment);
		return row;
				
	}
	
	@ResponseBody
	@RequestMapping(value="/add_Inspection_Payment_message",method=RequestMethod.POST)
	public int add_Inspection_Payment_message(Payment payment){		
		int row = this.paymentService.add_Inspection_Payment_message(payment);
		return row;
				
	}
	
	@ResponseBody
	@RequestMapping(value="/jiesuan_Payment",method=RequestMethod.POST)
	public int jiesuan_Payment(Payment payment){		
		int row = this.paymentService.jiesuan_Payment(payment);
		return row;
				
	}
	
	@ResponseBody
	@RequestMapping(value="/chongjian_Payment",method=RequestMethod.POST)
	public int chongjian_Payment(Payment payment){		
		int row = this.paymentService.chongjian_Payment(payment);
		return row;
				
	}
	
	@ResponseBody
	@RequestMapping(value="/add_project_Payment_message",method=RequestMethod.POST)
	public int add_project_Payment_message(Payment payment){		
		int row = this.paymentService.add_project_Payment_message(payment);
		return row;
				
	}
	
	@RequestMapping("select_Singel_Patient_Advance_Payment")
	@ResponseBody
	public  Map<String,Object> select_Singel_Patient_Advance_Payment(int pageSize,int pageNumber,
			String patient_id,Timestamp start_time,Timestamp end_time){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("patient_id", patient_id);
		param.put("start_time", start_time);
		param.put("end_time", end_time);
		
		int total = this.paymentService.get_Singel_Patient_Advance_Payment(patient_id, start_time, end_time);
		List<Payment> list = this.paymentService.select_Singel_Patient_Advance_Payment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("get_Singel_Patient_other_Payment")
	@ResponseBody
	public  Map<String,Object> get_Singel_Patient_other_Payment(int pageSize,int pageNumber,
			String patient_id,Timestamp start_time,Timestamp end_time,String payment_category){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("patient_id", patient_id);
		param.put("start_time", start_time);
		param.put("end_time", end_time);
		param.put("payment_category", payment_category);
		
		int total = this.paymentService.get_Singel_Patient_other_Payment(patient_id, start_time, end_time, payment_category);
		List<Payment> list = this.paymentService.select_Singel_Patient_other_Payment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("select_Singel_Patient_today_Payment")
	@ResponseBody
	public  Map<String,Object> select_Singel_Patient_today_Payment(int pageSize,int pageNumber,
			String patient_id,Timestamp start_time,Timestamp end_time){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("patient_id", patient_id);
		param.put("start_time", start_time);
		param.put("end_time", end_time);
		
		int total = this.paymentService.get_Singel_Patient_today_Payment(patient_id, start_time, end_time);
		List<Payment> list = this.paymentService.select_Singel_Patient_today_Payment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("select_Singel_Patient_medical_Payment")
	@ResponseBody
	public  Map<String,Object> select_Singel_Patient_medical_Payment(int pageSize,int pageNumber,
			String patient_id,Timestamp start_time,Timestamp end_time){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("patient_id", patient_id);
		param.put("start_time", start_time);
		param.put("end_time", end_time);
		
		int total = this.paymentService.get_Singel_Patient_medical_Payment(patient_id, start_time, end_time);
		List<Payment> list = this.paymentService.select_Singel_Patient_medical_Payment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	@RequestMapping("select_Singel_Patient_condiction_Payment")
	@ResponseBody
	public  Map<String,Object> select_Singel_Patient_condiction_Payment(int pageSize,int pageNumber,
			String patient_id,Timestamp start_time,Timestamp end_time,String payment_name){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println("============"+start_time);
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("payment_name", payment_name);
		param.put("patient_id", patient_id);
		param.put("start_time", start_time);
		param.put("end_time", end_time);
		
		int total = this.paymentService.get_Singel_Patient_condiction_Payment(patient_id, payment_name, start_time, end_time);
		List<Payment> list = this.paymentService.select_Singel_Patient_condiction_Payment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("select_one_Payment")
	@ResponseBody
	public  Map<String,Object> select_one_Payment(String payment_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		
		param.put("payment_id", payment_id);
		List<Payment> list = this.paymentService.select_one_Payment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("select_Patient_Payment")
	@ResponseBody
	public  Map<String,Object> select_Patient_Payment(int pageSize,int pageNumber,
			String patient_id,Timestamp start_time,Timestamp end_time,String payment_name){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println("============"+start_time);
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("payment_name", payment_name);
		param.put("patient_id", patient_id);
		param.put("start_time", start_time);
		param.put("end_time", end_time);
		
		int total = this.paymentService.get_select_Patient_Payment(patient_id, payment_name, start_time, end_time);
		List<Payment> list = this.paymentService.select_Patient_Payment(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/update_chongjian_Payment",method=RequestMethod.POST)
	public int update_chongjian_Payment(Payment payment){		
		int row = this.paymentService.update_chongjian_Payment(payment);
		return row;
				
	}
	
	
}
