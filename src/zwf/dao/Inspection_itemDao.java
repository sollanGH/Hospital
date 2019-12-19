package zwf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Inspection_item;



public interface Inspection_itemDao {
	
	
	public List<Inspection_item> select_Inspection_item(Map<String,Object> param);
	
	public int getCount_Inspection_item();
	
	public int add_Inspection_item(Inspection_item inspection_item);
	
	public int edit_Inspection_item(Inspection_item inspection_item);
	
	public int del_Inspection_item(Inspection_item inspection_item);
	
	public List<Inspection_item> select_condition_Inspection_item(@Param("condition") String condition);
}
