package zwf.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.User;;
public interface UserService {
	public User login(String login_name,String pass_word,Integer role_id);
	
	public List<User> selectAll(Map<String,Object> param);
	
	public int getCount(@Param("login_name") String login_name,
			@Param("user_male") String user_male);
	
	public int deleteUser(@Param("user_id") String user_id);
	
	public int addUser(User user);
	
	public int updateUser(User user);
	
	public List<User> selectDoctor(User user);
	
	public int getCountDoctor(User user);
	
}
