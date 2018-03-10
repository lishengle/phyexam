package com.hwadee.phyexam.controller;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;


import com.hwadee.phyexam.service.AccountService;
import com.alibaba.fastjson.JSONObject;
import com.hwadee.phyexam.entity.Account;

@Controller
public class AccountController {
	@Autowired 
	AccountService accountService;
	
	@ResponseBody
	@PostMapping(value="/login")
	public  JSONObject post(@RequestBody Account account,HttpServletResponse response) throws Exception
	{
		JSONObject message = new JSONObject();
		try {
			accountService.login(account.getPhone(), account.getPassword());
			message.put("status", 1);
			message.put("msg", "success");
					
		} catch (Exception e) {
			message.put("status", 0);
			message.put("msg", "fail");
	}
		
		return message;
	} 
	
	@ResponseBody
	@PostMapping(value="/register")
	public JSONObject post1(@RequestBody Account account,HttpServletResponse response)
	{
		JSONObject mObject = new JSONObject();
		
		try {
			accountService.register(account.getPhone(), account.getPassword(), account.getName());
			mObject.put("status", 1);
			mObject.put("msg", "success");
			
		} catch (Exception e) {
			mObject.put("status", 0);
			mObject.put("msg", "fail");
		}
		
		return mObject;
	}
	
}
