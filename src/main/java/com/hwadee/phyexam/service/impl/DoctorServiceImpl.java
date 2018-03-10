package com.hwadee.phyexam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.hwadee.phyexam.dao.DoctorMapper;
import com.hwadee.phyexam.entity.Doctor;
import com.hwadee.phyexam.exception.LoginException;
import com.hwadee.phyexam.model.PageInfo_doc;
import com.hwadee.phyexam.service.DoctorService;

@Service
public class DoctorServiceImpl implements DoctorService{

	@Autowired
	DoctorMapper doctorMapper;
	
	@Override
	public Doctor login(String num, String password) {
		Doctor doctor = doctorMapper.selectByPrimaryKey(num);
		if( doctor == null ){
			throw new LoginException("用户不存在");
		} else if( ! password.equals(doctor.getPassword()) ){
			throw new LoginException("密码错误");
		}
		return doctor;
	}
	
	public void register(String num,String password,String name)
	{
		Doctor doctor = new Doctor();
		doctorMapper.insert(doctor);
		doctor.setName(name);
		doctor.setPassword(password);
		doctor.setNum(num);
	}
	
	public PageInfo_doc find(String num) {
		
		PageInfo_doc pi = new PageInfo_doc();
		Doctor doctor = doctorMapper.selectByPrimaryKey(num);
		pi.setDoctor(doctor);
		
		return pi;
	}
}
