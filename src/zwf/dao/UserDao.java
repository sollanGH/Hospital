package zwf.dao;


import java.util.List;
import java.util.Map;

import zwf.po.User;

import org.apache.ibatis.annotations.Param;
public interface UserDao {
	
	public User login(@Param("login_name") String login_name,
					  @Param("pass_word") String pass_word,
					  @Param("role_id") Integer role_id);
			
	public List<User> selectAll(Map<String,Object> param);
		
	public int getCount(@Param("login_name") String login_name,
			@Param("user_male") String user_male);
		
	public int deleteUser(@Param("user_id") String user_id);
		
	public int addUser(User user);
	
	public int updateUser(User user);
	//获取科室对应医生列表
	public List<User> selectDoctor(User user);
	
	public int getCountDoctor(User user);
	
}
