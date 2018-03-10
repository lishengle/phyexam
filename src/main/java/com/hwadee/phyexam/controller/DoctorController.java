package com.hwadee.phyexam.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hwadee.phyexam.entity.Doctor;
import com.hwadee.phyexam.model.PageInfo_doc;
import com.hwadee.phyexam.service.DoctorService;

@Controller
public class DoctorController {

	@Autowired
	DoctorService doctorService;
	

	@RequestMapping(value="/login-doctor", method = RequestMethod.GET)
	public String get(){
		///WEB-INF/views/login.jsp
		//request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		return "login";
	}
	
	@RequestMapping(value="/doctors",method=RequestMethod.GET)
	public @ResponseBody PageInfo_doc post(@RequestParam(name="num",defaultValue="1") String num,HttpSession session){
		Doctor doctor=(Doctor)session.getAttribute("doctor");
		PageInfo_doc pi = doctorService.find(doctor.getNum());
		
		//model.addAttribute("pi", pi);
		
		return pi;
	}
}
