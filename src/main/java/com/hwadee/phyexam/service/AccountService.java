package com.hwadee.phyexam.service;

import com.hwadee.phyexam.entity.Account;

public interface AccountService {
	
	Account login(String phone, String password);

	Account register(String phone,String password,String name);
	
}
