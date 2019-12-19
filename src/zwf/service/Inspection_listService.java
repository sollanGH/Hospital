package zwf.service;



import java.util.List;
import java.util.Map;

import zwf.po.Inspection_list;




public interface Inspection_listService {
	
	public List<Inspection_list> select_Inspection_list(Map<String,Object> param);
	
	public int getCount_Inspection_list(Inspection_list inspection_list);
	
	public int edit_Inspection_list(Inspection_list inspection_list);
	
	public int count_action_Inspection_list(Inspection_list inspection_list);
	
	public List<Inspection_list> printf_select_Inspection_list(Map<String,Object> param);
	
}
