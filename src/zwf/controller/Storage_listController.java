package zwf.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import zwf.po.Storage_list;
import zwf.service.Storage_listService;

@Controller
public class Storage_listController {

	@Autowired
	private Storage_listService storage_listService;
	
	@RequestMapping("selectStorage_list")
	@ResponseBody
	public  Map<String,Object> selectStorage_list(int pageSize,int pageNumber,String storage_id){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("storage_id", storage_id);		
		int total = this.storage_listService.getCountStorage_list(storage_id);
		List<Storage_list> list = this.storage_listService.selectStorage_list(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	
	@RequestMapping(value="/addStroage_list",method=RequestMethod.POST)
	@ResponseBody
	public int addStroage_list(Storage_list storage_list){
		int row = this.storage_listService.addStroage_list(storage_list);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping(value="/updateStroage_list",method=RequestMethod.POST)
	@ResponseBody
	public int updateStroage_list(Storage_list storage_list){
		int row = this.storage_listService.updateStroage_list(storage_list);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping(value="/delStroage_list",method=RequestMethod.POST)
	@ResponseBody
	public int delStroage_list(Storage_list storage_list){
		int row = this.storage_listService.delStroage_list(storage_list);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
}
