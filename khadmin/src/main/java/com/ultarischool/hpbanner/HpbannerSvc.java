package com.ultarischool.hpbanner;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;




@Service
public class HpbannerSvc implements com.ultarischool.hpbanner.hpbannerMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	@Override
	public int countByExample(hpbannerExample example) {
		return sqlSession.selectOne("countByExampleHb", example);
	}

	@Override
	public int deleteByExample(hpbannerExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(hpbanner record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(hpbanner record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<hpbanner> selectByExample(hpbannerExample example) {
		return sqlSession.selectList("selectByExampleHb", example);
	}

	@Override
	public hpbanner selectByPrimaryKey(Integer sn) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByExampleSelective(hpbanner record, hpbannerExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(hpbanner record, hpbannerExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(hpbanner record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(hpbanner record) {
		// TODO Auto-generated method stub
		return 0;
	}
	


	
	
}
