package zwf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Deparment;



public interface DeparmentDao {
	/**
	 * 所有科室有关的信息
	 * @param param   
	 * @return
	 */
	public List<Deparment> selectAllDeparment(Map<String,Object> param);
	/**
	 * 
	 * @return 所有科室名字
	 */
	public List<Deparment> selectDeparment();
	
	
	
	/**
	 *测试对应id的信息
	 * @param deparment_id
	 * @return
	 */
	public List<Deparment> selectDeparmentid(@Param("deparment_id") String deparment_id);
	
	/**
	 * 
	 * @return 科室总数
	 */
	public int getCountDeparment();
	
	/**
	 * 删
	 * @param deparment_id
	 * @return
	 */
	public int deleteDeparment(@Param("deparment_id") String deparment_id);
	
	/**
	 * 增
	 * @param deparment
	 * @return
	 */
	public int addDeparment(Deparment deparment);
	
	/**
	 * 更
	 * @param deparment
	 * @return
	 */
	public int updateDeparment(Deparment deparment);
	
	//一对多
	 public List<Deparment> getAllDeparment(Map<String,Object> param);
}
