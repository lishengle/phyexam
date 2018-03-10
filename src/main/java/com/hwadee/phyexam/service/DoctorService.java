package com.hwadee.phyexam.service;

import com.hwadee.phyexam.entity.Doctor;
import com.hwadee.phyexam.model.PageInfo_doc;

public interface DoctorService {

	Doctor login(String num, String password);
	
	void register(String peNum,String password,String name);
	
	PageInfo_doc find(String num);

}
