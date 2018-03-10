package com.hwadee.phyexam.service.impl;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hwadee.phyexam.entity.Account;
import com.hwadee.phyexam.service.AccountService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context.xml"})

public class AccountServiceImplTest {
	@Autowired AccountService accountService;

	@Test
	public void loginTest() {
		
		String it = "1";
		Account account = accountService.login(it,"19969156");
		Assert.assertNull("aaaaaaaaaaaaaaaaaa", account);
	}

}
