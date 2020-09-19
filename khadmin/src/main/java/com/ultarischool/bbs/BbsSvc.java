package com.ultarischool.bbs;
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
public class BbsSvc implements com.ultarischool.bbs.bbsMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	@Override
	public int countByExample(bbsExample example) {
		return sqlSession.selectOne("countByExampleBbs", example);
	}

	@Override
	public int deleteByExample(bbsExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		return sqlSession.delete("deleteByPrimaryKeyBbs",sn);
	}

	@Override
	public int insert(bbs record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(bbs record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<bbs> selectByExample(bbsExample example) {
		return sqlSession.selectList("selectByExampleBbs", example);
	}

	@Override
	public bbs selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyBbs", sn);
		
	}

	@Override
	public int updateByExampleSelective(bbs record, bbsExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(bbs record, bbsExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(bbs record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(bbs bbs) {
		return 0;
	}
	
	public int updateByExampleBbs(bbs bbs) {
		return sqlSession.update("updateByExampleBbs",bbs);
	}

	
	
}
