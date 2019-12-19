package zwf.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import zwf.po.Project;
import zwf.service.ProjectService;

@Controller
public class ProjectController {

	@Autowired
	private ProjectService projectService;
	
	@RequestMapping("selectproject")
	@ResponseBody
	public  Map<String,Object> selectproject(String condition,Integer project_category){
		/*所需参数*/		
		//int total = this.medicinesService.gstCountMedicines(condition);
		System.out.println("                        "+project_category);
		List<Project> data = this.projectService.selectproject(condition, project_category);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("value", data);
		//responseMap.put("total", total);		
		System.out.println(data);
		return responseMap;
	}
}
