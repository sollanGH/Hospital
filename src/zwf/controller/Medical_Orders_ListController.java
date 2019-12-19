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
import zwf.po.Medical_Orders_List;
import zwf.po.Medical_Orders_List_Action;
import zwf.po.Patient_message;
import zwf.po.Payment;
import zwf.po.Requisition;
import zwf.po.Requisition_List;
import zwf.service.Medical_Orders_ListService;
import zwf.test.Printf_Long;
import zwf.test.Printf_Long.ZGLSZBean_Long;
import zwf.test.Printf_Monent;
import zwf.test.Printf_Monent.ZGLSZBean_Monent;

@Controller
public class Medical_Orders_ListController {

	@Autowired
	private Medical_Orders_ListService medical_Orders_ListService;
	
	@RequestMapping("selectMedical_Orders_List")
	@ResponseBody
	public  Map<String,Object> selectMedical_Orders_List(int pageSize,int pageNumber,String patient_id){
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
		int total = this.medical_Orders_ListService.getCountMedical_Orders_List(patient_id);
		List<Medical_Orders_List> list = this.medical_Orders_ListService.selectMedical_Orders_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	@RequestMapping("selectMedical_Orders_List_Long")
	@ResponseBody
	public  Map<String,Object> selectMedical_Orders_List_Long(int pageSize,int pageNumber,String patient_id){
		System.out.println("Mmedical_orders_id ="+patient_id);
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println(pageSize+"         "+pageNumber);
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("patient_id", patient_id);
		int total = this.medical_Orders_ListService.getCountMedical_Orders_List_Long(patient_id);
		List<Medical_Orders_List> list = this.medical_Orders_ListService.selectMedical_Orders_List_Long(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		
		 /*Printf_Long printf_Long = new Printf_Long();
		 ZGLSZBean_Long zglszBean = new ZGLSZBean_Long();
	   	 zglszBean.setDyrq("1");
	   	 zglszBean.setRqfw(list.get(0).getPatient().getPatient_id());
	   	 zglszBean.setSncode("科");
	   	 zglszBean.setSnname(list.get(0).getPatient().getPatient_name());
	   	 zglszBean.setSpcode(list.get(0).getPatient().getPatient_meal());
	   	 //zglszBean.setSpname("1");
		
		 List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
	    	
    	 for(int i=0;i<=list.size()-1;i++){
    		 
    		 Map<String, Object> map = new HashMap<String, Object>(); 	
    		     	 
	    	 map.put("KSRQ",list.get(i).getStart_time());
	    	 map.put("YZNR", list.get(i).getMedicines().getMedicines_name()+list.get(i).getMedicines().getMedicines_form());
	    	 map.put("ZSQZ", list.get(i).getUser().getUser_name());
	    	 map.put("HSQZ", list.get(i).getUser1().getUser_name());
	    	 map.put("TZSJ", list.get(i).getEnd_time());
	    	 map.put("ZSQZ1", i);
	    	 map.put("HSQZ1", i);
	    	 //map.put("SNNAME", i);
	    	 listMap.add(map);
	    	 zglszBean.setArray_list(listMap);
    	 }
    	 
    	 try {
			printf_Long.addTable("H:\\登记表.pdf", zglszBean);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		return responseMap;
	}
	@RequestMapping("select_Action_Medical_Orders_List")
	@ResponseBody
	public  Map<String,Object> select_Action_Medical_Orders_List(int pageSize,int pageNumber,String patient_id){
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
		int total = this.medical_Orders_ListService.getCount_Action_Medical_Orders_List(patient_id);
		List<Medical_Orders_List> list = this.medical_Orders_ListService.select_Action_Medical_Orders_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@RequestMapping("select_Action_Medical_Orders_List_Long")
	@ResponseBody
	public  Map<String,Object> select_Action_Medical_Orders_List_Long(int pageSize,int pageNumber,String patient_id){
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
		int total = this.medical_Orders_ListService.getCount_Action_Medical_Orders_List_Long(patient_id);
		List<Medical_Orders_List> list = this.medical_Orders_ListService.select_Action_Medical_Orders_List_Long(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/addMedical_Orders_List",method=RequestMethod.POST)
	public int addMedical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.addMedical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/updateMedical_Orders_List_singel_time",method=RequestMethod.POST)
	@ResponseBody
	public int updateMedical_Orders_List_singel_time(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.updateMedical_Orders_List_singel_time(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/updateMedical_Orders_List_singel_time1",method=RequestMethod.POST)
	@ResponseBody
	public int updateMedical_Orders_List_singel_time1(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.updateMedical_Orders_List_singel_time1(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/updateMedical_Orders_List_group_time",method=RequestMethod.POST)
	@ResponseBody
	public int updateMedical_Orders_List_group_time(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.updateMedical_Orders_List_group_time(medical_Orders_List);
		System.out.println(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/updateMedical_Orders_List_group_time1",method=RequestMethod.POST)
	@ResponseBody
	public int updateMedical_Orders_List_group_time1(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.updateMedical_Orders_List_group_time1(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/updateMedical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int updateMedical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.updateMedical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/update_single_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int update_single_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.update_single_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/update_Group_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int update_Group_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.update_Group_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/update_All_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int update_All_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.update_All_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/update_All_stop_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int update_All_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.update_All_stop_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@ResponseBody
	@RequestMapping(value="/deleteMedical_Orders_List",method=RequestMethod.POST)
	public String deleteDeparmentList(String medical_orders_list_id){
		System.out.println(medical_orders_list_id);
		int row = this.medical_Orders_ListService.deleteMedical_Orders_List(medical_orders_list_id);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;	
	}
	@RequestMapping(value="/check_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int check_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		System.out.println(medical_Orders_List.getCheck_nurse_id());
		int row = this.medical_Orders_ListService.check_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/return_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int return_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		System.out.println(medical_Orders_List.getCheck_nurse_id());
		int row = this.medical_Orders_ListService.return_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/cancel_check_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int cancel_check_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		System.out.println(medical_Orders_List.getSelect_id());
		int row = this.medical_Orders_ListService.cancel_check_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/action_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int action_Medical_Orders_List(Medical_Orders_List medical_Orders_List,Requisition requisition){
		System.out.println(medical_Orders_List.getSelect_id());
		System.out.println(medical_Orders_List.getNurse_id());
		System.out.println(requisition.getPatient_id());		
		int row = this.medical_Orders_ListService.action_Medical_Orders_List(medical_Orders_List,requisition);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		System.out.println("========="+row);
		return row;
	}
	
	@ResponseBody
	@RequestMapping(value="/add_Requisition_List",method=RequestMethod.POST)
	public int add_Requisition_List(Requisition_List requisition_List){
		int row = this.medical_Orders_ListService.add_Requisition_List(requisition_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/update_single_stop_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int update_single_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.update_single_stop_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/update_Group_stop_Medical_Orders_List",method=RequestMethod.POST)
	@ResponseBody
	public int update_Group_stop_Medical_Orders_List(Medical_Orders_List medical_Orders_List){
		int row = this.medical_Orders_ListService.update_Group_stop_Medical_Orders_List(medical_Orders_List);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	@RequestMapping(value="/selectid",method=RequestMethod.GET)
	@ResponseBody
	public List<Medical_Orders_List> selectid( ){
		List<Medical_Orders_List> row = this.medical_Orders_ListService.selectid();
		for(int i=0;i<row.size();i++){
			System.out.println(row.get(i).getPatient_id());
		}
		return row;
	}
	@RequestMapping(value="/select_action_id",method=RequestMethod.GET)
	@ResponseBody
	public List<Medical_Orders_List> select_action_id(Medical_Orders_List medical_Orders_List){
		List<Medical_Orders_List> row = this.medical_Orders_ListService.selectid();
		//String selectid = "";
		/*for(int i=0;i<row.size();i++){
			System.out.println(row.get(i).getPatient_id()+" "+medical_Orders_List.getStart_time()+" "+medical_Orders_List.getEnd_time());
			
			
			medical_Orders_List.setPatient_id(row.get(i).getPatient_id());
			List<Medical_Orders_List> row1 = this.medical_Orders_ListService.select_action_id(medical_Orders_List);
			System.out.println(medical_Orders_List.getPatient_id()+"  "+medical_Orders_List.getStart_time()+" "+medical_Orders_List.getEnd_time());
			//selectid =null;
			//System.out.println(row1);
			if(row1.size()>0){
				for(int j=0;j<row1.size();j++){
					//System.out.println(row1.get(j).getMedical_orders_list_id()+"  "+row.get(i).getPatient_id());
					selectid = selectid + row1.get(j).getMedical_orders_list_id()+ ",";
				}
				//去掉最后的逗号
				selectid = selectid.substring(0, selectid.length() - 1);
				System.out.println(selectid+" "+row.get(i).getPatient_id());
			}
			
		}*/
		
		
		return row;
	}
	@RequestMapping(value="/add_everyday_medical_orders_action",method=RequestMethod.GET)
	@ResponseBody
	public int add_everyday_medical_orders_action(Medical_Orders_List medical_Orders_List,Medical_Orders_Action medical_Orders_Action,
			Medical_Orders_List_Action medical_Orders_List_Action,Payment payment,Patient_message patient_message){
		
		int row = this.medical_Orders_ListService.add_everyday_medical_orders_action(medical_Orders_List, medical_Orders_Action, medical_Orders_List_Action, payment, patient_message);
		
		return row;
	}
	
	
	
	@RequestMapping("printf_Medical_Orders_List_Long")
	@ResponseBody
	public  Map<String,Object> printf_Medical_Orders_List_Long(int pageSize,int pageNumber,String patient_id){
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
		int total = this.medical_Orders_ListService.getCount_Action_Medical_Orders_List_Long(patient_id);
		List<Medical_Orders_List> list = this.medical_Orders_ListService.select_Action_Medical_Orders_List_Long(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		
		 Printf_Long printf_Long = new Printf_Long();
		 ZGLSZBean_Long zglszBean = new ZGLSZBean_Long();
	   	 zglszBean.setSpname(list.get(0).getBed().getBed_name());
	   	 //System.out.println(list.get(0).getBed().getBed_name());
	   	 zglszBean.setRqfw(list.get(0).getPatient().getPatient_id());
	   	 zglszBean.setSncode(list.get(0).getDeparment().getDeparment_name());
	   	 zglszBean.setSnname(list.get(0).getPatient().getPatient_name());
	   	 zglszBean.setSpcode(list.get(0).getPatient().getPatient_meal());
	   	 //zglszBean.setSpname("1");
		
		 List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
	    	if(list.size()<15){
    	 for(int i=0;i<=14;i++){
    		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");       
    		 //String a=df.format(new Date("Wed Sep 16 19:02:36 CST 2009")); 
    		 Map<String, Object> map = new HashMap<String, Object>(); 	
    		 if(i<=list.size()-1){
    			 map.put("KSRQ",df.format(list.get(i).getStart_time()));
    			 if(list.get(i).getMedicines()!=null){
    				 map.put("YZNR", list.get(i).getMedicines().getMedicines_name()
        	    			 +"  "+list.get(i).getMedicines().getMedicines_form()
        	    			 +"  "+list.get(i).getNumber()+list.get(i).getMedicines().getMedicines_unit()
        	    			 +"  "+list.get(i).getSpeed()
        	    			 +"  "+list.get(i).getWays()
        	    			 +"  "+list.get(i).getDirection());
    			 }else if(list.get(i).getProject()!=null){
    				 map.put("YZNR", list.get(i).getProject().getProject_name()
        	    			 +"  "+list.get(i).getNumber()+list.get(i).getProject().getProject_unit()
        	    			 +"  "+list.get(i).getDirection());
    			 }else if(list.get(i).getInspection_item()!=null){
       				 map.put("YZNR", list.get(i).getInspection_item().getInspection_item_name()
           	    			 +"  "+list.get(i).getNumber()+list.get(i).getInspection_item().getInspection_item_unit()
           	    			 +"  "+list.get(i).getDirection());
       			 }
    			 if(list.get(i).getCheck_time()!=null){
    				 map.put("HDSJ",df.format(list.get(i).getCheck_time()));
    			 }else{
    				 map.put("HDSJ","");
    			 }
    	    	 map.put("ZSQZ", list.get(i).getUser().getUser_name());
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
		    	 map.put("HSQZ","");
		    	 map.put("TZSJ","");
		    	 map.put("ZSQZ1","");
    		 }  	 
	    	 	
	    	 //map.put("HSQZ1", i);
	    	 //map.put("SNNAME", i);
	    	 listMap.add(map);
	    	 zglszBean.setArray_list(listMap);
    	 }}else{
    		 for(int i=0;i<list.size()-1;i++){
        		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");       
        		 //String a=df.format(new Date("Wed Sep 16 19:02:36 CST 2009")); 
        		 Map<String, Object> map = new HashMap<String, Object>(); 	
        		// if(i<=list.size()-1){
        			 map.put("KSRQ",df.format(list.get(i).getStart_time()));
        			 if(list.get(i).getMedicines()!=null){
        				 map.put("YZNR", list.get(i).getMedicines().getMedicines_name()
            	    			 +"  "+list.get(i).getMedicines().getMedicines_form()
            	    			 +"  "+list.get(i).getNumber()+list.get(i).getMedicines().getMedicines_unit()
            	    			 +"  "+list.get(i).getSpeed()
            	    			 +"  "+list.get(i).getWays()
            	    			 +"  "+list.get(i).getDirection());
        			 }else if(list.get(i).getProject()!=null){
        				 map.put("YZNR", list.get(i).getProject().getProject_name()
            	    			 +"  "+list.get(i).getNumber()+list.get(i).getProject().getProject_unit()
            	    			 +"  "+list.get(i).getDirection());
        			 }else if(list.get(i).getInspection_item()!=null){
           				 map.put("YZNR", list.get(i).getInspection_item().getInspection_item_name()
               	    			 +"  "+list.get(i).getNumber()+list.get(i).getInspection_item().getInspection_item_unit()
               	    			 +"  "+list.get(i).getDirection());
           			 }
        			 if(list.get(i).getCheck_time()!=null){
        				 map.put("HDSJ",df.format(list.get(i).getCheck_time()));
        			 }else{
        				 map.put("HDSJ","");
        			 }
        	    	 map.put("ZSQZ", list.get(i).getUser().getUser_name());
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
        		/* }else{
        			 map.put("KSRQ","");
    		    	 map.put("YZNR","");
    		    	 map.put("ZSQZ","");
    		    	 map.put("HSQZ","");
    		    	 map.put("TZSJ","");
    		    	 map.put("ZSQZ1","");
        		 }  */	 
    	    	 	
    	    	 //map.put("HSQZ1", i);
    	    	 //map.put("SNNAME", i);
    	    	 listMap.add(map);
    	    	 zglszBean.setArray_list(listMap);
        	 }
    	 }
    	 
    	 try {
    		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hhmmss");  
    		 String today = df.format(new Date()); 
    		 System.out.println(today);
			printf_Long.addTable("C:\\Users\\13926\\Desktop\\printf\\"+list.get(0).getPatient().getPatient_name()+"长期医嘱单"+today+".pdf", zglszBean);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return responseMap;
	}
	@RequestMapping("printf_Medical_Orders_List_Monent")
	@ResponseBody
	public  Map<String,Object> printf_Medical_Orders_List_Monent(int pageSize,int pageNumber,String patient_id){
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
		int total = this.medical_Orders_ListService.getCountMedical_Orders_List(patient_id);
		List<Medical_Orders_List> list = this.medical_Orders_ListService.select_Action_Medical_Orders_List(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		
		 Printf_Monent printf_Monent = new Printf_Monent();
		 ZGLSZBean_Monent zglszBean = new ZGLSZBean_Monent();
	   	 zglszBean.setSpname(list.get(0).getBed().getBed_name());
	   	 //System.out.println(list.get(0).getBed().getBed_name());
	   	 zglszBean.setRqfw(list.get(0).getPatient().getPatient_id());
	   	 zglszBean.setSncode(list.get(0).getDeparment().getDeparment_name());
	   	 zglszBean.setSnname(list.get(0).getPatient().getPatient_name());
	   	 zglszBean.setSpcode(list.get(0).getPatient().getPatient_meal());
	   	 //zglszBean.setSpname("1");
		
		 List<Map<String, Object>> listMap = new ArrayList<Map<String,Object>>();
	    	if(list.size()<15){
	    		for(int i=0;i<=14;i++){
	       		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");       
	       		 //String a=df.format(new Date("Wed Sep 16 19:02:36 CST 2009")); 
	       		 Map<String, Object> map = new HashMap<String, Object>(); 	
	       		 if(i<=list.size()-1){
	       			 map.put("KSRQ",df.format(list.get(i).getStart_time()));
	       			 if(list.get(i).getMedicines()!=null){
	       				 map.put("YZNR", list.get(i).getMedicines().getMedicines_name()
	           	    			 +"  "+list.get(i).getMedicines().getMedicines_form()
	           	    			 +"  "+list.get(i).getNumber()+list.get(i).getMedicines().getMedicines_unit()
	           	    			 +"  "+list.get(i).getSpeed()
	           	    			 +"  "+list.get(i).getWays()
	           	    			 +"  "+list.get(i).getDirection());
	       			 }else if(list.get(i).getProject()!=null){
	       				 map.put("YZNR", list.get(i).getProject().getProject_name()
	           	    			 +"  "+list.get(i).getNumber()+list.get(i).getProject().getProject_unit()
	           	    			 +"  "+list.get(i).getDirection());
	       			 }else if(list.get(i).getInspection_item()!=null){
	       				 map.put("YZNR", list.get(i).getInspection_item().getInspection_item_name()
	           	    			 +"  "+list.get(i).getNumber()+list.get(i).getInspection_item().getInspection_item_unit()
	           	    			 +"  "+list.get(i).getDirection());
	       			 }
	       			 if(list.get(i).getCheck_time()!=null){
	       				 map.put("HDSJ",df.format(list.get(i).getCheck_time()));
	       			 }else{
	       				 map.put("HDSJ","");
	       			 }
	       	    	 map.put("ZSQZ", list.get(i).getUser().getUser_name());
	       	    	 map.put("HSQZ", list.get(i).getUser1().getUser_name());
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
	    	}else{
    	 for(int i=0;i<=list.size()-1;i++){
    		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");       
    		 //String a=df.format(new Date("Wed Sep 16 19:02:36 CST 2009")); 
    		 Map<String, Object> map = new HashMap<String, Object>(); 	
    		 //if(i<=list.size()-1){
    			 map.put("KSRQ",df.format(list.get(i).getStart_time()));
    			 if(list.get(i).getMedicines()!=null){
    				 map.put("YZNR", list.get(i).getMedicines().getMedicines_name()
        	    			 +"  "+list.get(i).getMedicines().getMedicines_form()
        	    			 +"  "+list.get(i).getNumber()+list.get(i).getMedicines().getMedicines_unit()
        	    			 +"  "+list.get(i).getSpeed()
        	    			 +"  "+list.get(i).getWays()
        	    			 +"  "+list.get(i).getDirection());
    			 }else if(list.get(i).getProject()!=null){
    				 map.put("YZNR", list.get(i).getProject().getProject_name()
        	    			 +"  "+list.get(i).getNumber()+list.get(i).getProject().getProject_unit()
        	    			 +"  "+list.get(i).getDirection());
    			 }else if(list.get(i).getInspection_item()!=null){
    				 map.put("YZNR", list.get(i).getInspection_item().getInspection_item_name()
        	    			 +"  "+list.get(i).getNumber()+list.get(i).getInspection_item().getInspection_item_unit()
        	    			 +"  "+list.get(i).getDirection());
    			 }
    			 if(list.get(i).getCheck_time()!=null){
    				 map.put("HDSJ",df.format(list.get(i).getCheck_time()));
    			 }else{
    				 map.put("HDSJ","");
    			 }
    	    	 map.put("ZSQZ", list.get(i).getUser().getUser_name());
    	    	 map.put("HSQZ", list.get(i).getUser1().getUser_name());
    		/* }else{
    			 map.put("KSRQ","");
		    	 map.put("YZNR","");
		    	 map.put("ZSQZ","");
		    	 map.put("HSQZ","");
    		 } */
	    	 	
	    	 //map.put("HSQZ1", i);
	    	 //map.put("SNNAME", i);
	    	 listMap.add(map);
	    	 zglszBean.setArray_list(listMap);
    	 }}
    	 
    	 try {
    		 DateFormat df=new SimpleDateFormat("yyyy-MM-dd hhmmss");  
    		 String today = df.format(new Date()); 
    		 System.out.println(today);
    		 printf_Monent.addTable("C:\\Users\\13926\\Desktop\\printf\\"+list.get(0).getPatient().getPatient_name()+"临时医嘱单"+today+".pdf", zglszBean);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return responseMap;
	}
	
	
}
