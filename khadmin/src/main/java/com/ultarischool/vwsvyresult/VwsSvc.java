package com.ultarischool.vwsvyresult;
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
public class VwsSvc implements com.ultarischool.vwsvyresult.vwsvyresultMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	@Override
	public int countByExample(vwsvyresultExample example) {
		return sqlSession.selectOne("countByExampleSp", example);
	}
	
	public int countByExampleVWSGroup(vwsvyresultExample example) {
		return sqlSession.selectOne("countByExampleVWSGroup", example);
	}
	

	
	public List<vwsvyresult> selectByExampleVWSGroup(vwsvyresultExample example) {
		return sqlSession.selectList("selectByExampleVWSGroup", example);
	}

	@Override
	public int deleteByExample(vwsvyresultExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteByPrimaryKey(Integer sn) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	public List<vwsvyresult> selectListSvType() {
		return sqlSession.selectList("selectListSvType");
	}
	
	public List<vwsvyresult> selectListSvy() {
		return sqlSession.selectList("selectListSvy");
	}
	
	public List<vwsvyresult> selListSvyRsltSv() {
		return sqlSession.selectList("selListSvyRsltSv");
	}
	public List<vwsvyresult> selListSvyRsltSch() {
		return sqlSession.selectList("selListSvyRsltSch");
	}
	public List<vwsvyresult> selListSvyRsltJob() {
		return sqlSession.selectList("selListSvyRsltJob");
	}
	

	@Override
	public int insertSelective(vwsvyresult record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<vwsvyresult> selectByExample(vwsvyresultExample example) {
		return sqlSession.selectList("selectByExampleSp", example);
	}
	
	

	public vwsvyresult selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyVws", sn);
		
	}

	@Override
	public int updateByExampleSelective(vwsvyresult record, vwsvyresultExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(vwsvyresult record, vwsvyresultExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(vwsvyresult record) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	public List<vwsvyresult> vwsReadUserList(vwsvyresult example) {
		return sqlSession.selectList("selectVWSUserList", example);
	}
	public List<vwsvyresult> vwsReadUser(vwsvyresult example) {
		return sqlSession.selectList("selectVWSUser", example);
	}
	


	
	
}
