package com.hwadee.phyexam.dao;

import com.hwadee.phyexam.entity.Account;
import com.hwadee.phyexam.entity.AccountExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AccountMapper {
    /**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	long countByExample(AccountExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int deleteByExample(AccountExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int deleteByPrimaryKey(String phone);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int insert(Account record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int insertSelective(Account record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	List<Account> selectByExample(AccountExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	Account selectByPrimaryKey(String phone);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int updateByExampleSelective(@Param("record") Account record, @Param("example") AccountExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int updateByExample(@Param("record") Account record, @Param("example") AccountExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int updateByPrimaryKeySelective(Account record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table account
	 * @mbg.generated  Sat Mar 10 14:25:31 CST 2018
	 */
	int updateByPrimaryKey(Account record);
   
    
}