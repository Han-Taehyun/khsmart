package com.ultarischool.vwtableinfo;
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
public class VwtableinfoSvc implements com.ultarischool.vwtableinfo.vwtableinfoMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	public List<vwtableinfo> selectListTb() {
		return sqlSession.selectList("selectListTb");
	}
	
	public vwtableinfo selectMainDashBoard() {
		return sqlSession.selectOne("selectMainDashBoard");
	}

	@Override
	public int countByExample(vwtableinfoExample example) {
		return sqlSession.selectOne("countByExampleVWT", example);
	}
	

	@Override
	public List<vwtableinfo> selectByExample(vwtableinfoExample example) {
		return sqlSession.selectList("selectByExampleVWT", example);
	}


	@Override
	public int deleteByExample(vwtableinfoExample example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int insert(vwtableinfoWithBLOBs record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int insertSelective(vwtableinfoWithBLOBs record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<vwtableinfoWithBLOBs> selectByExampleWithBLOBs(vwtableinfoExample example) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int updateByExampleSelective(vwtableinfoWithBLOBs record, vwtableinfoExample example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateByExampleWithBLOBs(vwtableinfoWithBLOBs record, vwtableinfoExample example) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int updateByExample(vwtableinfo record, vwtableinfoExample example) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	




	
	
}
