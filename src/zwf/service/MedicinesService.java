package zwf.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import zwf.po.Medicines;

public interface MedicinesService {
	
	public List<Medicines> selectMedicines(@Param("condition") String condition,
			@Param("medicines_category") Integer medicines_category);
	
	public int gstCountMedicines(@Param("condition") String condition);
}
