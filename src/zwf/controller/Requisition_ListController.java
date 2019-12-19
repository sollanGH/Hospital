package zwf.controller;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import zwf.po.Requisition_List;
import zwf.service.Requisition_ListService;
import zwf.test.Printf_Medicines;
import zwf.test.Printf_Medicines.ZGLSZBean_Medicines;

@Controller
public class Requisition_ListController {

	@Autowired
	private Requisition_ListService requisition_ListService;
	
	@RequestMapping("selectRequisition_List")
	@ResponseBody
	public  Map<String,Object> selectRequisition_List(int pageSize,int pageNumber,Integer requisition_id,String patient_id,
			String patient_name,Integer deparment_id,Integer requisition_status,Timestamp start_ruyuan_time,
			Timestamp end_ruyuan_time,Requisition_List requisition_List){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("requisition_id", requisition_id);
		param.put("patient_id", patient_id);
		param.put("patient_name", patient_name);
		param.put("deparment_id", deparment_id);
		param.put("requisition_status", requisition_status);
		param.put("start_ruyuan_time", start_ruyuan_time);
		param.put("end_ruyuan_time", end_ruyuan_time);
		System.out.println(deparment_id+"__________________");
		int total = this.requisition_ListService.getCountRequisition_List(requisition_List);
		List<Requisition_List> list = this.requisition_ListService.selectRequisition_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	@RequestMapping("select_cancelRequisition_List")
	@ResponseBody
	public  Map<String,Object> select_cancelRequisition_List(int pageSize,int pageNumber,Integer requisition_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("requisition_id", requisition_id);
		int total = this.requisition_ListService.getCount_cancelRequisition_List(requisition_id);
		List<Requisition_List> list = this.requisition_ListService.select_cancelRequisition_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	@RequestMapping(value="/updateRequisition_List",method=RequestMethod.POST)
	@ResponseBody
	public int updateRequisition_List(Requisition_List requisition_List){
		System.out.println(requisition_List.getSelect_id());
		int row = this.requisition_ListService.updateRequisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/cancelRequisition_List",method=RequestMethod.POST)
	@ResponseBody
	public int cancelRequisition_List(Requisition_List requisition_List){
		System.out.println(requisition_List.getSelect_id());
		int row = this.requisition_ListService.cancelRequisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/actionRequisition_List",method=RequestMethod.POST)
	@ResponseBody
	public int actionRequisition_List(Requisition_List requisition_List){
		System.out.println(requisition_List.getSelect_id());
		int row = this.requisition_ListService.actionRequisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping("printf_selectRequisition_List")
	@ResponseBody
	public  Map<String,Object> printf_selectRequisition_List(int pageSize,int pageNumber,Integer requisition_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("requisition_id", requisition_id);
		//int total = this.requisition_ListService.getCountRequisition_List(requisition_id);
		List<Requisition_List> list = this.requisition_ListService.printf_selectRequisition_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		//responseMap.put("total", total);
		//System.out.println("total:"+total);
		System.out.println(list);
		
		
		Printf_Medicines printf_Long = new Printf_Medicines();
		 ZGLSZBean_Medicines zglszBean = new ZGLSZBean_Medicines();
	   	 zglszBean.setSpname(list.get(0).getBed().getBed_name());
	   	 //System.out.println(list.get(0).getBed().getBed_name());
	   	zglszBean.setDyrq(list.get(0).getUser().getUser_name());
	   	zglszBean.setAbcd("");
	   	 zglszBean.setSncode(list.get(0).getDeparment().getDeparment_name());
	   	DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
	   	DateFormat df2=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   	String tstry = "";
	   	String tstry1 = "";
	   	Timestamp ts = new Timestamp(System.currentTimeMillis());  
	   	Timestamp str = list.get(0).getRequisition().getStart_time();
 		 String today = df.format(new Date());
 		 tstry = df.format(str);
 		 tstry1 = df2.format(ts);
	   	 zglszBean.setSnname(tstry);
	   	 zglszBean.setSpcode(tstry1);
	   	 //zglszBean.setSpname("1");
		
		 List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
	    	
  	 for(int i=0;i<=8;i++){
  		 //DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");       
  		 //String a=df.format(new Date("Wed Sep 16 19:02:36 CST 2009")); 
  		 Map<String, Object> map = new HashMap<String, Object>(); 	
  		 if(i<=list.size()-1){
  			 map.put("KSRQ",list.get(i).getMedicines().getMedicines_name());
  	    	 map.put("YZNR", list.get(i).getMedicines().getMedicines_form());
  	    	 map.put("ZSQZ",list.get(i).getNumber());
  	    	 map.put("HSQZ",list.get(i).getMedicines().getMedicines_unit());
  		 }else{
  			     map.put("KSRQ","");
		    	 map.put("YZNR","");
		    	 map.put("ZSQZ","");
		    	 map.put("HSQZ","");
  		 }  	 
	    	 	
	    	 //map.put("HSQZ1", i);
	    	 //map.put("SNNAME", i);
	    	 listMap.add(map);
	    	 zglszBean.setArray_list(listMap);
  	 }
  	zglszBean.setRqfw(list.get(0).getPatient().getPatient_id());
  	 try {
  		 DateFormat df1=new SimpleDateFormat("yyyy-MM-dd hhmmss");  
  		 String today1 = df1.format(new Date()); 
  		 System.out.println(today);
			printf_Long.addTable("C:\\Users\\13926\\Desktop\\printf\\"+list.get(0).getPatient().getPatient_name()+"请领单"+today1+".pdf", zglszBean);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return responseMap;
	}
	
	@RequestMapping(value="/update_cancelRequisition_List",method=RequestMethod.POST)
	@ResponseBody
	public int update_cancelRequisition_List(Requisition_List requisition_List){
		System.out.println(requisition_List.getSelect_id());
		int row = this.requisition_ListService.update_cancelRequisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping(value="/cancel_cancelRequisition_List",method=RequestMethod.POST)
	@ResponseBody
	public int cancel_cancelRequisition_List(Requisition_List requisition_List){
		System.out.println(requisition_List.getSelect_id());
		int row = this.requisition_ListService.cancel_cancelRequisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping(value="/action_cancelRequisition_List",method=RequestMethod.POST)
	@ResponseBody
	public int action_cancelRequisition_List(Requisition_List requisition_List){
		System.out.println(requisition_List.getSelect_id());
		int row = this.requisition_ListService.action_cancelRequisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
}
