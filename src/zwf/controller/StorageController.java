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
import zwf.po.Storage;
import zwf.service.StorageService;

@Controller
public class StorageController {

	@Autowired
	private StorageService storageService;
	
	@RequestMapping("selectStorage")
	@ResponseBody
	public  Map<String,Object> selectStorage(int pageSize,int pageNumber,Timestamp start_time,
			Timestamp end_time,Integer storage_status){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		System.out.println();
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("start_time", start_time);
		param.put("end_time", end_time);
		param.put("storage_status", storage_status);
		int total = this.storageService.getCountStorage(start_time, end_time, storage_status);
		List<Storage> list = this.storageService.selectStorage(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	
	@RequestMapping(value="/addStroage",method=RequestMethod.POST)
	@ResponseBody
	public int addStroage(Storage storage){
		int row = this.storageService.addStroage(storage);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping(value="/actionStroage",method=RequestMethod.POST)
	@ResponseBody
	public int actionStroage(Storage storage){
		int row = this.storageService.actionStroage(storage);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping(value="/zuofei1Stroage",method=RequestMethod.POST)
	@ResponseBody
	public int zuofei1Stroage(Storage storage){
		int row = this.storageService.zuofei1Stroage(storage);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
	
	@RequestMapping(value="/zuofei2Stroage",method=RequestMethod.POST)
	@ResponseBody
	public int zuofei2Stroage(Storage storage){
		int row = this.storageService.zuofei2Stroage(storage);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return row;
	}
}
