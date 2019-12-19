package zwf.service.impl;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.RoomDao;
import zwf.po.Room;
import zwf.service.RoomService;

@Service
@Transactional
public class RoomServiceImpl implements RoomService{
	//ע��ע��UserDao
	@Autowired
	private RoomDao roomDao;

	@Override
	public List<Room> selectAllRoom(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.roomDao.selectAllRoom(param);
	}

	@Override
	public int getCountRoom(String room_name, Integer deparment_id) {
		// TODO Auto-generated method stub
		return this.roomDao.getCountRoom(room_name, deparment_id);
	}

	@Override
	public int deleteRoom(String room_id) {
		// TODO Auto-generated method stub
		return this.roomDao.deleteRoom(room_id);
	}

	@Override
	public int addRoom(Room room) {
		// TODO Auto-generated method stub
		return this.roomDao.addRoom(room);
	}

	@Override
	public int updateRoom(Room room) {
		// TODO Auto-generated method stub
		return this.roomDao.updateRoom(room);
	}

	@Override
	public List<Room> selectAllRoomid(String deparment_id) {
		// TODO Auto-generated method stub
		return this.roomDao.selectAllRoomid(deparment_id);
	}

	@Override
	public int getCountRoomid(String deparment_id) {
		// TODO Auto-generated method stub
		return this.roomDao.getCountRoomid(deparment_id);
	}

	@Override
	public List<Room> selectUseRoomid(String deparment_id) {
		// TODO Auto-generated method stub
		return this.roomDao.selectUseRoomid(deparment_id);
	}

	@Override
	public int getCountUseRoomid(String deparment_id) {
		// TODO Auto-generated method stub
		return this.roomDao.getCountUseRoomid(deparment_id);
	} 
	
	

	
}
