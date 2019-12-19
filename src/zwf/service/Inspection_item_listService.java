package zwf.service;



import java.util.List;
import java.util.Map;
import zwf.po.Inspection_item_list;




public interface Inspection_item_listService {
	
	public List<Inspection_item_list> select_Inspection_item_list(Map<String,Object> param);
	
	public int getCount_Inspection_item_list(Inspection_item_list inspection_item_list);
	
	public int add_Inspection_item_list(Inspection_item_list inspection_item_list);
	
	public int edit_Inspection_item_list(Inspection_item_list inspection_item_list);
	
	public int del_Inspection_item_list(Inspection_item_list inspection_item_list);
}
