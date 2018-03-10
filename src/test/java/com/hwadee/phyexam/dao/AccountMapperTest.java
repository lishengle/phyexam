package com.hwadee.phyexam.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.hwadee.phyexam.entity.Account;
import com.hwadee.phyexam.entity.AccountExample;
import com.hwadee.phyexam.entity.AccountExample.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-context.xml"})

public class AccountMapperTest {
	
	@Autowired private AccountMapper accountMapper;
	
	@Test
	public void test() {
		String num  = "1";
		AccountExample teammemberExample = new AccountExample();
		Criteria criteria = teammemberExample.createCriteria();
		criteria.andPasswordEqualTo(num);
		List<Account> listAccount = accountMapper.selectByExample(teammemberExample);
		for(int i =0;i < listAccount.size();i++)
		{
			System.out.println(i);
			System.out.println(listAccount.toString());
			Assert.assertNotNull(listAccount);
		}
		
	}

}
