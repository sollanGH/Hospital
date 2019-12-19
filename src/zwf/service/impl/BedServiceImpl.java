package zwf.service.impl;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.BedDao;
import zwf.po.Bed;
import zwf.po.Room;
import zwf.service.BedService;

@Service
@Transactional
public class BedServiceImpl implements BedService{
	
	@Autowired
	private BedDao bedDao;

	@Override
	public List<Bed> selectAllBed(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.bedDao.selectAllBed(param);
	}

	@Override
	public int getCountBed(String bed_name, Integer room_id,
			Integer deparment_id,String patient_name,Boolean bed_state) {
		// TODO Auto-generated method stub
		return this.bedDao.getCountBed(bed_name, room_id, deparment_id,patient_name,bed_state);
	}

	@Override
	public List<Room> selectAllBedid(String room_id) {
		// TODO Auto-generated method stub
		return this.bedDao.selectAllBedid(room_id);
	}

	@Override
	public int getCountBedid(String room_id) {
		// TODO Auto-generated method stub
		return this.bedDao.getCountBedid(room_id);
	}

	@Override
	public List<Room> selectAllUseBedid(String room_id) {
		// TODO Auto-generated method stub
		return this.bedDao.selectAllUseBedid(room_id);
	}

	@Override
	public int getCountUseBedid(String room_id) {
		// TODO Auto-generated method stub
		return this.bedDao.getCountUseBedid(room_id);
	}

	@Override
	public int updateRoomState(Integer bed_id) {
		// TODO Auto-generated method stub
		return this.bedDao.updateRoomState(bed_id);
	}

	
	
	

	
}
