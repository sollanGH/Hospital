package zwf.service;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import zwf.po.Patient;
public interface PatientService {
	
	/**
	 * 查找所有病人有关的信息
	 * @param param
	 * @return
	 */
	public List<Patient> selectAllPatient(Map<String,Object> param);
	/**
	 * 获取所有病人有关的页数
	 * @param patient_id 所查找的病人住院号
	 * @return
	 */
	public int getCountPatient(@Param("patient_id") String patient_id);
			
	/**
	 * 删
	 * @param patient
	 * @return
	 */
	public int deletePatient(@Param("patient_id") String patient_id);
	
	/**
	 * 增
	 * @param patient
	 * @return
	 */
	public int addPatient(Patient patient);
	

	/**
	 *更 
	 * @param patient
	 * @return
	 */
	public int updatePatient(Patient patient);
}
