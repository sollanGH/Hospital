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

import zwf.po.Patient;
import zwf.po.Patient_message;
import zwf.service.BedService;
import zwf.service.PatientService;
import zwf.service.Patient_messageService;

@Controller
public class Patient_messageController {

	@Autowired
	private Patient_messageService patient_messageService;
	@Autowired
	private PatientService patientService;
	@Autowired
	private BedService bedService;
	/*
	 * 数据列表
	 * 
	 */
	@RequestMapping(value="/toPatient_message")
	public String toPatient_message(){
		return "Patient_message";
	}
	@RequestMapping(value="/toPatient_message_doctor")
	public String toPatient_message_doctor(){
		return "Patient_message_doctor";
	}
	/*
	 *
	 * 添加数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/addPatient_message",method=RequestMethod.POST)
	public int addPatient_message(Patient_message patient_message,Patient patient,Integer bed_id,Integer company_bed_id){		
		int row = this.patient_messageService.addPatient_message(patient_message);
		return row;
		
		
	}
	@ResponseBody
	@RequestMapping(value="/updatePatient_message",method=RequestMethod.POST)
	public int updatePatient_message(Patient_message patient_message){		
		int row = this.patient_messageService.updatePatient_message(patient_message);
		return row;
		
		
	}
	@RequestMapping("selectPatient_messageAll")
	@ResponseBody
	public  Map<String,Object> selectPatient_messageAll(int pageSize,int pageNumber,
			String patient_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time){
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
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		
		int total = this.patient_messageService.getCountPatient_message(patient_id,patient_name,start_ruyuan_time,end_ruyuan_time);
		List<Patient_message> list = this.patient_messageService.selectAllPatient_message(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("selectAllPatient_message_doctor")
	@ResponseBody
	public  Map<String,Object> selectAllPatient_message_doctor(int pageSize,int pageNumber,
			String patient_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,String doctor_id){
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
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		param.put("doctor_id", doctor_id);
		
		int total = this.patient_messageService.getCountPatient_message_doctor(patient_id, patient_name, start_ruyuan_time, end_ruyuan_time, doctor_id);
		List<Patient_message> list = this.patient_messageService.selectAllPatient_message_doctor(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("selectPatient_Use_messageAll")
	@ResponseBody
	public  Map<String,Object> selectPatient_Use_messageAll(int pageSize,int pageNumber,
			String patient_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,Integer select_deparment_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("select_deparment_id", select_deparment_id);
		param.put("patient_id", patient_id);
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		
		int total = this.patient_messageService.getCount_UsePatient_message(patient_id, select_deparment_id, patient_name, start_ruyuan_time, end_ruyuan_time);
		List<Patient_message> list = this.patient_messageService.selectAll_UsePatient_message(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	@RequestMapping("selectAll_UsePatient_message_doctor")
	@ResponseBody
	public  Map<String,Object> selectAll_UsePatient_message_doctor(int pageSize,int pageNumber,
			String patient_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,Integer select_deparment_id,String doctor_id,Integer role_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("select_deparment_id", select_deparment_id);
		param.put("patient_id", patient_id);
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		param.put("doctor_id", doctor_id);
		param.put("role_id", role_id);
		
		int total = this.patient_messageService.getCount_UsePatient_message_doctor(patient_id, select_deparment_id, patient_name, start_ruyuan_time, end_ruyuan_time, doctor_id, role_id);
				
		List<Patient_message> list = this.patient_messageService.selectAll_UsePatient_message_doctor(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	@RequestMapping("selectAll_Payment_Patient_message")
	@ResponseBody
	public  Map<String,Object> selectAll_Payment_Patient_message(int pageSize,int pageNumber,
			String patient_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,Integer select_deparment_id){
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
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		param.put("select_deparment_id", select_deparment_id);
		
		int total = this.patient_messageService.getCount_Payment_Patient_message(patient_id, select_deparment_id, patient_name, start_ruyuan_time, end_ruyuan_time);
		List<Patient_message> list = this.patient_messageService.selectAll_Payment_Patient_message(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("selectAll_Payment_select_Patient_message")
	@ResponseBody
	public  Map<String,Object> selectAll_Payment_select_Patient_message(int pageSize,int pageNumber,
			String patient_id,String patient_name,Timestamp start_ruyuan_time,Timestamp end_ruyuan_time,Integer select_deparment_id){
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
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		param.put("select_deparment_id", select_deparment_id);
		
		int total = this.patient_messageService.getCount_Payment_select_Patient_message(select_deparment_id, patient_id, patient_name, start_ruyuan_time, end_ruyuan_time);
		List<Patient_message> list = this.patient_messageService.selectAll_Payment_select_Patient_message(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("selectAll_Payment_today_Patient_message")
	@ResponseBody
	public  Map<String,Object> selectAll_Payment_today_Patient_message(int pageSize,int pageNumber,
			String patient_id,String patient_name,Timestamp start_ruyuan_time,
			Timestamp end_ruyuan_time,Integer select_deparment_id,Integer role_id){
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
		param.put("patient_name", patient_name);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		param.put("select_deparment_id", select_deparment_id);
		param.put("role_id", role_id);
		
		int total = this.patient_messageService.getCount_Payment_today_Patient_message(select_deparment_id, patient_id, patient_name, start_ruyuan_time, end_ruyuan_time);
		List<Patient_message> list = this.patient_messageService.selectAll_Payment_today_Patient_message(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/update_chuyuan_Patient_message",method=RequestMethod.POST)
	public int update_chuyuan_Patient_message(Patient_message patient_message){		
		int row = this.patient_messageService.update_chuyuan_Patient_message(patient_message);
		return row;
		
		
	}
}
