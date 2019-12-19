package zwf.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Deparment;
public interface DeparmentService {
	//��ѯ����
	public List<Deparment> selectAllDeparment(Map<String,Object> param);
	
	public List<Deparment> selectDeparment();
	public List<Deparment> selectDeparmentid(@Param("deparment_id") String deparment_id);
	
	//��ѯ��ѯ����
	public int getCountDeparment();
	
	//ɾ������
	public int deleteDeparment(@Param("deparment_id") String deparment_id);
	
	//�������
	public int addDeparment(Deparment deparment);
	
	//��������
	public int updateDeparment(Deparment deparment);
	
	//一对多
	public List<Deparment> getAllDeparment(Map<String,Object> param);
}
