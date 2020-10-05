package com.ultarischool.career;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;




@SuppressWarnings("unused")
@Service
public class CareerSvc implements com.ultarischool.career.careerMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	@Override
	public int countByExample(careerExample example) {
		return sqlSession.selectOne("countByExampleCareer", example);
	}

	@Override
	public int deleteByExample(careerExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(career record) {
		sqlSession.insert("insertCareer",record);
		return 0;
	}

	@Override
	public int insertSelective(career record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<career> selectByExample(careerExample example) {
		return sqlSession.selectList("selectByExampleCareer", example);
	}

	@Override
	public career selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyCareer", sn);
		
	}

	@Override
	public int updateByExampleSelective(career record, careerExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(career record, careerExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(career record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(career record) {
		// TODO Auto-generated method stub
		return 0;
	}
	

	public int update(career record) {
		sqlSession.insert("updateFaq",record);
		return 0;
	}
	
	public int delete(career record) {
		sqlSession.delete("deleteFaq",record);
		return 0;
	}
	
	
	
}
