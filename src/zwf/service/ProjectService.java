package zwf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import zwf.po.Project;

public interface ProjectService {
	
	public List<Project> selectproject(@Param("condition") String condition,
			@Param("project_category") Integer project_category);
	
	public int gstCountproject(@Param("condition") String condition);
}
