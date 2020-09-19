package com.ultarischool.hpenv;
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
public class HpenvSvc implements com.ultarischool.hpenv.hpenvMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	@Override
	public int countByExample(hpenvExample example) {
		return sqlSession.selectOne("countByExampleHe", example);
	}
	
	public int countByExampleLine(hpenvExample example) {
		return sqlSession.selectOne("countByExampleLine", example);
	}

	@Override
	public int deleteByExample(hpenvExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(hpenv record) {
		return sqlSession.insert("insertHe", record);
	}

	@Override
	public int insertSelective(hpenv record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<hpenv> selectByExample(hpenvExample example) {
		return sqlSession.selectList("selectByExampleHe", example);
	}
	
	public List<hpenv> selectByExampleLine(hpenvExample example) {
		return sqlSession.selectList("selectByExampleLine", example);
	}
	
	public List<hpenv> selListCmsBig() {
		return sqlSession.selectList("selListCmsBig");
	}
	
	public List<hpenv> selCmsCode() {
		return sqlSession.selectList("selCmsCode");
	}
	
	

	@Override
	public hpenv selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyHe",sn);
		
	}

	@Override
	public int updateByExampleSelective(hpenv record, hpenvExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(hpenv record, hpenvExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(hpenv record) {
		sqlSession.update("updateByPrimaryKeyHe",record);
		return 0;
	}

	@Override
	public int updateByPrimaryKey(hpenv record) {
		// TODO Auto-generated method stub
		return 0;
	}
	


	
	
}
