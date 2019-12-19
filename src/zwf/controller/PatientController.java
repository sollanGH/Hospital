package zwf.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Patient;
import zwf.service.PatientService;

@Controller
public class PatientController {
	@Autowired
	private PatientService patientService;
	/*
	 * 列表页面
	 * 
	 */
	@RequestMapping(value="/toPatientList")
	public String toPatientList(){
		return "Patient";
	}
	/*
	 *
	 * 添加数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/addPatient",method=RequestMethod.POST)
	public String addPatient(Patient patient){
		int row = this.patientService.addPatient(patient);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	/*
	 * 
	 * 更新数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/updatePatient",method=RequestMethod.POST)
	public String updatePatient(Patient patient){
		int row = this.patientService.updatePatient(patient);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	/**
	 * 查找所有房间有关的信息
	 * @param pageSize   	每页的记录行数
	 * @param pageNumber 	 默认第几页
	 * @param patient_id	所查找的病人住院id
	 * @return
	 */
	@RequestMapping("selectPatientAll")
	@ResponseBody
	public  Map<String,Object> selectPatientAll(int pageSize,int pageNumber,String patient_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("patient_id", patient_id);
		
		int total = this.patientService.getCountPatient(patient_id);
		List<Patient> list = this.patientService.selectAllPatient(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		return responseMap;
	}
	
	/*
	 * 
	 * 删除数据
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/deletePatientList",method=RequestMethod.POST)
	public String deletePatientList(String patient_id){
		int row = this.patientService.deletePatient(patient_id);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	
	}

