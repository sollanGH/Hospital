package zwf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zwf.dao.ProjectDao;
import zwf.po.Project;
import zwf.service.ProjectService;
@Service
@Transactional
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectDao projectDao;

	@Override
	public List<Project> selectproject(String condition,
			Integer project_category) {
		return this.projectDao.selectproject(condition, project_category);
	}

	@Override
	public int gstCountproject(String condition) {
		return this.projectDao.gstCountproject(condition);
	}

	
}
