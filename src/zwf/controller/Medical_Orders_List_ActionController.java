package zwf.controller;

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

import zwf.po.Medical_Orders_Action;
import zwf.po.Medical_Orders_List_Action;
import zwf.po.Requisition;
import zwf.po.Requisition_List;
import zwf.service.Medical_Orders_List_ActionService;
import zwf.test.Printf_Long_Action;
import zwf.test.Printf_Long_Action.ZGLSZBean_Long_Action;
import zwf.test.Printf_Monent_Action;
import zwf.test.Printf_Monent_Action.ZGLSZBean_Monent_Action;

@Controller
public class Medical_Orders_List_ActionController {

	@Autowired
	private Medical_Orders_List_ActionService medical_Orders_List_ActionService;
	
	@RequestMapping("select_today_Medical_Orders_List")
	@ResponseBody
	public  Map<String,Object> select_today_Medical_Orders_List(int pageSize,int pageNumber,String patient_id,Integer medical_orders_action_id){
		System.out.println("Mmedical_orders_id ="+patient_id);
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
		param.put("medical_orders_action_id", medical_orders_action_id);
		int total = this.medical_Orders_List_ActionService.getCount_today_Medical_Orders_List(patient_id, medical_orders_action_id);
		List<Medical_Orders_List_Action> list = this.medical_Orders_List_ActionService.select_today_Medical_Orders_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("select_today_Medical_Orders_List_Long")
	@ResponseBody
	public  Map<String,Object> select_today_Medical_Orders_List_Long(int pageSize,int pageNumber,String patient_id,Integer medical_orders_action_id){
		System.out.println("Mmedical_orders_id ="+patient_id);
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
		param.put("medical_orders_action_id", medical_orders_action_id);
		int total = this.medical_Orders_List_ActionService.getCount_today_Medical_Orders_List_Long(patient_id, medical_orders_action_id);
		List<Medical_Orders_List_Action> list = this.medical_Orders_List_ActionService.select_today_Medical_Orders_List_Long(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping(value="/action_Medical_Orders_List_Action",method=RequestMethod.POST)
	@ResponseBody
	public int action_Medical_Orders_List_Action(Medical_Orders_List_Action medical_Orders_List_Action,
			Medical_Orders_Action medical_Orders_Action,Requisition requisition){
		System.out.println(medical_Orders_List_Action.getSelect_id());
		System.out.println(medical_Orders_List_Action.getNurse_id());
		System.out.println(requisition.getPatient_id());		
		int row = this.medical_Orders_List_ActionService.action_Medical_Orders_List_Action(medical_Orders_List_Action, medical_Orders_Action, requisition);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		System.out.println("========="+row);
		return row;
	}
	
	@ResponseBody
	@RequestMapping(value="/add_Requisition_List1",method=RequestMethod.POST)
	public int add_Requisition_List1(Requisition_List requisition_List){
		int row = this.medical_Orders_List_ActionService.add_Requisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping("printf_select_today_Medical_Orders_List")
	@ResponseBody
	public  Map<String,Object> printf_select_today_Medical_Orders_List(int pageSize,int pageNumber,String patient_id,Integer medical_orders_action_id){
		System.out.println("Mmedical_orders_id ="+patient_id);
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
		param.put("medical_orders_action_id", medical_orders_action_id);
		//int total = this.medical_Orders_List_ActionService.getCount_today_Medical_Orders_List(patient_id, medical_orders_action_id);
		List<Medical_Orders_List_Action> list = this.medical_Orders_List_ActionService.printf_select_today_Medical_Orders_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		//responseMap.put("total", total);
		//System.out.println("total:"+total);
		System.out.println(list);
		
		 Printf_Monent_Action printf_Monent = new Printf_Monent_Action();
		 ZGLSZBean_Monent_Action zglszBean = new ZGLSZBean_Monent_Action();
	   	 zglszBean.setSpname(list.get(0).getBed().getBed_name());
	   	 //System.out.println(list.get(0).getBed().getBed_name());
	   	 zglszBean.setRqfw(list.get(0).getPatient().getPatient_id());
	   	 zglszBean.setSncode(list.get(0).getDeparment().getDeparment_name());
	   	 zglszBean.setSnname(list.get(0).getPatient().getPatient_name());
	   	 zglszBean.setSpcode(list.get(0).getPatient().getPatient_meal());
	   	 //zglszBean.setSpname("1");
		
		 List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
	    	
	   	 for(int i=0;i<=12;i++){
	   		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");       
	   		 //String a=df.format(new Date("Wed Sep 16 19:02:36 CST 2009")); 
	   		 Map<String, Object> map = new HashMap<String, Object>(); 	
	   		    if(i<=list.size()-1){
	   		    	map.put("KSRQ",df.format(list.get(i).getStart_time()));
			    	 map.put("YZNR", list.get(i).getMedicines().getMedicines_name()
			    			 +"  "+list.get(i).getMedicines().getMedicines_form()
			    			 +"  "+list.get(i).getNumber()+list.get(i).getMedicines().getMedicines_unit()
			    			 +"  "+list.get(i).getSpeed()
			    			 +"  "+list.get(i).getWays()
			    			 +"  "+list.get(i).getDirection());
			    	 map.put("ZSQZ",list.get(i).getUser().getUser_name());
			    	 if(list.get(i).getAction_time()==null){
			    		 map.put("ZXSJ","");
			    	 }else{
			    		 map.put("ZXSJ",df.format(list.get(i).getAction_time()));
			    	 }
			    	 if(list.get(i).getUser1().getUser_name()==null){
			    		 map.put("ZSHS","");
			    	 }else{
			    		 map.put("ZSHS", list.get(i).getUser1().getUser_name());
			    	 }
			    	 
	   		    }else{
	   		    	map.put("KSRQ","");
			    	 map.put("YZNR","");
			    	 map.put("ZSQZ","");
			    	 map.put("ZXSJ","");
			    	 map.put("ZSHS","");
	   		    }
		    	 	
		    	 //map.put("HSQZ1", i);
		    	 //map.put("SNNAME", i);
		    	 listMap.add(map);
		    	 zglszBean.setArray_list(listMap);
	   	 }
	   	 
	   	 
	   	 try {
	   		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hhmmss");  
	   		 String today = df.format(new Date()); 
	   		 System.out.println(today);
	   		 printf_Monent.addTable("C:\\Users\\13926\\Desktop\\printf\\"+list.get(0).getPatient().getPatient_name()+"临时医嘱执行单"+today+".pdf", zglszBean);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		
		
		return responseMap;
	}
	
	@RequestMapping("printf_select_today_Medical_Orders_List_Long")
	@ResponseBody
	public  Map<String,Object> printf_select_today_Medical_Orders_List_Long(int pageSize,int pageNumber,String patient_id,Integer medical_orders_action_id){
		System.out.println("Mmedical_orders_id ="+patient_id);
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
		param.put("medical_orders_action_id", medical_orders_action_id);
		//int total = this.medical_Orders_List_ActionService.getCount_today_Medical_Orders_List(patient_id, medical_orders_action_id);
		List<Medical_Orders_List_Action> list = this.medical_Orders_List_ActionService.printf_select_today_Medical_Orders_List_Long(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		//responseMap.put("total", total);
		//System.out.println("total:"+total);
		System.out.println(list);
		
		 Printf_Long_Action printf_Long = new Printf_Long_Action();
		 ZGLSZBean_Long_Action zglszBean = new ZGLSZBean_Long_Action();
	   	 zglszBean.setSpname(list.get(0).getBed().getBed_name());
	   	 //System.out.println(list.get(0).getBed().getBed_name());
	   	 zglszBean.setRqfw(list.get(0).getPatient().getPatient_id());
	   	 zglszBean.setSncode(list.get(0).getDeparment().getDeparment_name());
	   	 zglszBean.setSnname(list.get(0).getPatient().getPatient_name());
	   	 zglszBean.setSpcode(list.get(0).getPatient().getPatient_meal());
	   	 //zglszBean.setSpname("1");
		
		 List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
	    	
   	 for(int i=0;i<=12;i++){
   		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");       
   		 //String a=df.format(new Date("Wed Sep 16 19:02:36 CST 2009")); 
   		 Map<String, Object> map = new HashMap<String, Object>(); 	
   		 if(i<=list.size()-1){
   			 map.put("KSRQ",df.format(list.get(i).getStart_time()));
   	    	 map.put("YZNR", list.get(i).getMedicines().getMedicines_name()
   	    			 +"  "+list.get(i).getMedicines().getMedicines_form()
   	    			 +"  "+list.get(i).getNumber()+list.get(i).getMedicines().getMedicines_unit()
   	    			 +"  "+list.get(i).getSpeed()
   	    			 +"  "+list.get(i).getWays()
   	    			 +"  "+list.get(i).getDirection());
   	    	 map.put("ZSQZ", list.get(i).getUser().getUser_name());
   	    	 if(list.get(i).getAction_time()==null){
   	    		map.put("ZXSJ","");
   	    	 }else{
   	    		 map.put("ZXSJ",df.format(list.get(i).getAction_time()));
   	    	 }
   	    	 map.put("HSQZ", list.get(i).getUser1().getUser_name());
   	    	 if(list.get(i).getEnd_time()==null){
   	    		 map.put("TZSJ","");
   	    	 }else{
   	    		 map.put("TZSJ", df.format(list.get(i).getEnd_time()));
   	    	 }
   	    	 if(list.get(i).getUser2()==null){
   	    		 map.put("ZSQZ1", "");
   	    	 }else{
   	    		 map.put("ZSQZ1", list.get(i).getUser2().getUser_name());
   	    	 } 
   		 }else{
   			     map.put("KSRQ","");
		    	 map.put("YZNR","");
		    	 map.put("ZSQZ","");
		    	 map.put("ZXSJ","");
		    	 map.put("HSQZ","");
		    	 map.put("TZSJ","");
		    	 map.put("ZSQZ1","");
   		 }  	 
	    	 	
	    	 //map.put("HSQZ1", i);
	    	 //map.put("SNNAME", i);
	    	 listMap.add(map);
	    	 zglszBean.setArray_list(listMap);
   	 }
   	 
   	 try {
   		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hhmmss");  
   		 String today = df.format(new Date()); 
   		 System.out.println(today);
			printf_Long.addTable("C:\\Users\\13926\\Desktop\\printf\\"+list.get(0).getPatient().getPatient_name()+"长期医嘱执行单"+today+".pdf", zglszBean);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return responseMap;
	}
	
}
