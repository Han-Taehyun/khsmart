package com.ultarischool.codet;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.ultarischool.usert.usert;




@Service
public class CodetSvc implements com.ultarischool.codet.codetMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	@Override
	public int countByExample(codetExample example) {
		return sqlSession.selectOne("countByExampleCodet", example);
	}
	
	public int countByExample2(codetExample example) {
		return sqlSession.selectOne("countByExampleCodet2", example);
	}
	
	
	
	@Override
	public int deleteByExample(codetExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		sqlSession.delete("deleteByPrimaryKeyCodet", sn);
		return 0;
	}

	@Override
	public int insert(codet record) {
		sqlSession.insert("insertCodet", record);
		return 0;
	}

	@Override
	public int insertSelective(codet record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<codet> selectByExample(codetExample example) {
		return sqlSession.selectList("selectByExampleCodet", example);
	}
	
	public List<codet> selectAll() {
		return sqlSession.selectList("selectAllCodet");
	}
	
	public List<codet> selectByExample2(codetExample example) {
		return sqlSession.selectList("selectByExampleCodet2", example);
	}
	
	public List<codet> selectListCodeType() {
		return sqlSession.selectList("selectListCodeType");
	}
	

	@Override
	public codet selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyCodet", sn);
	}
	
	public usert selectByPrimaryKeyTutor(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyTTPdf", sn);
	}

	@Override
	public int updateByExampleSelective(codet codet, codetExample example) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int updateByPrimaryKeyCodet(codet codet) {
		sqlSession.update("updateByPrimaryKeyCodet", codet);
		return 0;
		
	}

	@Override
	public int updateByExample(codet record, codetExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(codet record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(codet record) {
		// TODO Auto-generated method stub
		return 0;
	}

	


	
	
}
