package zwf.service;



import java.util.List;
import java.util.Map;

import zwf.po.Inspection;
import zwf.po.Inspection_list;




public interface InspectionService {
	
	public List<Inspection> select_Inspection(Map<String,Object> param);
	
	public int getCount_Inspection(Inspection inspection);
	
	public int add_Inspection(Inspection inspection);
	
	public int check_Inspection(Inspection inspection);
	
	public List<Inspection> select_action_Inspection(Map<String,Object> param);
	
	public int getCount_action_Inspection(Inspection inspection);
	
	public int action_Inspection(Inspection inspection,Inspection_list inspection_list);
	
	public int action_Inspection2(Inspection inspection);
	
	public int add_suggest_Inspection(Inspection inspection);
	
	public List<Inspection> select_show_Inspection(Map<String,Object> param);
	
	public int getCount_show_Inspection(Inspection inspection);
	
	public String show_suggest_Inspection(Inspection inspection);
}
