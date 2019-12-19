package zwf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zwf.po.Project;

public interface ProjectDao {
	
	public List<Project> selectproject(@Param("condition") String condition,
			@Param("project_category") Integer project_category);
	
	public int gstCountproject(@Param("condition") String condition);
	
}
