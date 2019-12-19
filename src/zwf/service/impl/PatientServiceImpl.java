package zwf.service.impl;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import zwf.dao.PatientDao;
import zwf.po.Patient;
import zwf.service.PatientService;



@Service
@Transactional
public class PatientServiceImpl implements PatientService{
	//ע��ע��UserDao
	@Autowired
	private PatientDao patientDao;

	@Override
	public List<Patient> selectAllPatient(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return this.patientDao.selectAllPatient(param);
	}

	@Override
	public int getCountPatient(String patient_id) {
		// TODO Auto-generated method stub
		return this.patientDao.getCountPatient(patient_id);
	}

	@Override
	public int deletePatient(String patient_id) {
		// TODO Auto-generated method stub
		return this.patientDao.deletePatient(patient_id);
	}

	@Override
	public int addPatient(Patient patient) {
		// TODO Auto-generated method stub
		return this.patientDao.addPatient(patient);
	}

	@Override
	public int updatePatient(Patient patient) {
		// TODO Auto-generated method stub
		return this.patientDao.updatePatient(patient);
	}

	
	

	
}
