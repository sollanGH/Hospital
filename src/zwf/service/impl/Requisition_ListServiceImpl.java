package zwf.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import zwf.dao.Requisition_ListDao;
import zwf.po.Requisition_List;
import zwf.service.Requisition_ListService;


@Service
@Transactional
public class Requisition_ListServiceImpl implements Requisition_ListService {
	
	@Autowired
	private Requisition_ListDao requisition_ListDao;

	@Override
	public List<Requisition_List> selectRequisition_List(
			Map<String, Object> param) {
		return this.requisition_ListDao.selectRequisition_List(param);
	}

	@Override
	public int getCountRequisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.getCountRequisition_List(requisition_List);
	}

	@Override
	public int updateRequisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.updateRequisition_List(requisition_List);
	}

	@Override
	public int cancelRequisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.cancelRequisition_List(requisition_List);
	}

	@Override
	public int actionRequisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.actionRequisition_List(requisition_List);
	}

	@Override
	public List<Requisition_List> printf_selectRequisition_List(
			Map<String, Object> param) {
		return this.requisition_ListDao.printf_selectRequisition_List(param);
	}

	@Override
	public List<Requisition_List> select_cancelRequisition_List(
			Map<String, Object> param) {
		return this.requisition_ListDao.select_cancelRequisition_List(param);
	}

	@Override
	public int getCount_cancelRequisition_List(Integer requisition_id) {
		return this.requisition_ListDao.getCount_cancelRequisition_List(requisition_id);
	}

	@Override
	public int update_cancelRequisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.update_cancelRequisition_List(requisition_List);
	}

	@Override
	public int cancel_cancelRequisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.cancel_cancelRequisition_List(requisition_List);
	}

	@Override
	public int action_cancelRequisition_List(Requisition_List requisition_List) {
		return this.requisition_ListDao.action_cancelRequisition_List(requisition_List);
	}

	
	

}
