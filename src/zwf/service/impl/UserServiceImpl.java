package zwf.service.impl;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.UserDao;
import zwf.po.User;
import zwf.service.UserService;
@Service
@Transactional
public class UserServiceImpl implements UserService{
	//ע��ע��UserDao
	@Autowired
	private UserDao userDao; 
	
	

	@Override
	public List<User> selectAll(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.userDao.selectAll(param);
	}

	@Override
	public int getCount(String login_name, String user_male) {
		// TODO Auto-generated method stub
		return this.userDao.getCount(login_name, user_male);
	}

	@Override
	public int deleteUser(String user_id) {
		// TODO Auto-generated method stub
		return this.userDao.deleteUser(user_id);
	}

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return this.userDao.addUser(user);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return this.userDao.updateUser(user);
	}

	@Override
	public List<User> selectDoctor(User user) {
		// TODO Auto-generated method stub
		return this.userDao.selectDoctor(user);
	}

	@Override
	public int getCountDoctor(User user) {
		// TODO Auto-generated method stub
		return this.userDao.getCountDoctor(user);
	}

	@Override
	public User login(String login_name, String pass_word, Integer role_id) {
		return this.userDao.login(login_name, pass_word, role_id);
	}

	
	
}
