package zwf.service.impl;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.DeparmentDao;
import zwf.po.Deparment;
import zwf.service.DeparmentService;

@Service
@Transactional
public class DeparmentServiceImpl implements DeparmentService{
	//ע��ע��DeparmentDao
	@Autowired
	private DeparmentDao deparmentDao;

	@Override
	public List<Deparment> selectAllDeparment(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.deparmentDao.selectAllDeparment(param);
	}

	@Override
	public int getCountDeparment() {
		// TODO Auto-generated method stub
		return this.deparmentDao.getCountDeparment();
	}

	@Override
	public int deleteDeparment(String deparmentId) {
		// TODO Auto-generated method stub
		return this.deparmentDao.deleteDeparment(deparmentId);
	}

	@Override
	public int addDeparment(Deparment deparment) {
		// TODO Auto-generated method stub
		return this.deparmentDao.addDeparment(deparment);
	}

	@Override
	public int updateDeparment(Deparment deparment) {
		// TODO Auto-generated method stub
		return this.deparmentDao.updateDeparment(deparment);
	}

	@Override
	public List<Deparment> selectDeparment() {
		// TODO Auto-generated method stub
		return this.deparmentDao.selectDeparment();
	}

	@Override
	public List<Deparment> selectDeparmentid(@Param("deparment_id") String deparment_id) {
		// TODO Auto-generated method stub
		return this.deparmentDao.selectDeparmentid(deparment_id);
	}

	@Override
	public List<Deparment> getAllDeparment(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.deparmentDao.getAllDeparment(param);
	} 
	
	

	

	

	

	

	

	

	
}
