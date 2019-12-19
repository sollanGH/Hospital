package zwf.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medicines;

public interface MedicinesDao {
	
	public List<Medicines> selectMedicines(@Param("condition") String condition,
			@Param("medicines_category") Integer medicines_category);
	
	public int gstCountMedicines(@Param("condition") String condition);
	
}
