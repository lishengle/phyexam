package com.hwadee.phyexam.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hwadee.phyexam.dao.AccountMapper;
import com.hwadee.phyexam.entity.Account;
import com.hwadee.phyexam.exception.LoginException;
import com.hwadee.phyexam.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService{
	
//private transient static final Logger log = LoggerFactory.getLogger(PhyexamerServiceImpl.class);
	
	@Autowired
	private AccountMapper accountMapper;
	
	@Override
	public Account login(String phone, String password) {
		//log.info("�������˺�", pe_num);
		Account account = accountMapper.selectByPrimaryKey(phone);
		if( account == null ){
			//log.warn("�û�������", pe_num);
			throw new LoginException("������ȷ���˺Ų�����");
		} else if( ! password.equals(account.getPassword()) ){
			throw new LoginException("�������");
		}
		System.out.println("��¼�ɹ�");
		return account;
	}
	
	
	@Override
	public Account register(String phone,String password,String name)
	{
		
		Account account = new Account();
		account.setName(name);
		account.setPassword(password);
		account.setPhone(phone);
		try {
			accountMapper.insert(account);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return account;
	}
	
	

}
