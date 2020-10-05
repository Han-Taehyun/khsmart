package com.khsmart.surveypool;
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
public class SurveypoolSvcNml {

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	
	
	public List<surveypoolnml> selectVwResHumanList(Integer resvyno) {
		return sqlSession.selectList("selectVwResHumanList",resvyno);
	}
	
	public List<surveypoolnml> selectVwResponse(surveypoolExampleNml example) {
		return sqlSession.selectList("selectVwResponse",example);
	}
	
	
	
	public int countVwResponse(surveypoolExampleNml example) {
		return sqlSession.selectOne("countVwResponse",example);
	}
	
	public surveypoolnml selectVwResponseOneTop(surveypoolExampleNml example) {
		return sqlSession.selectOne("selectVwResponseOneTop",example);
	}
	
	
	
	
	public List<surveypoolnml> selectVwResponseOne(surveypoolExampleNml example) {
		return sqlSession.selectList("selectVwResponseOne",example);
	}
	
	public int countVwResponseOne(surveypoolExampleNml example) {
		return sqlSession.selectOne("countVwResponseOne",example);
	}
	
	
	
	

	
	public int countByExample(surveypoolExampleNml example) {
		return sqlSession.selectOne("countByExampleSp", example);
	}
	
	public int countByExample2(surveypoolExampleNml example) {
		return sqlSession.selectOne("countByExampleSp2", example);
	}

	
	public int deleteByExample(surveypoolExampleNml example) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int deleteByPrimaryKey(Integer sn) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int insert(surveypoolnml record) {
		sqlSession.insert("insertSp2",record);
		return 0;
	}
	
	public int dynamicSvyRes(surveypoolnml record) {
		sqlSession.insert("dynamicSvyRes",record);
		return 0;
	}
	
	public int dynamicSvyResUp(surveypoolnml record) {
		sqlSession.update("dynamicSvyResUp",record);
		return 0;
	}
	
	
	public int deleteSvy(Integer sn) {
		sqlSession.delete("deleteSvy",sn);
		return 0;
	}
	
	public int insertSvypool(surveypoolnml record) {
		sqlSession.insert("insertSpNml",record);
		return 0;
	}
	
	public List<surveypoolnml> selectListSvType() {
		return sqlSession.selectList("selectListSvType");
	}
	
	public List<surveypoolnml> selectListSvy() {
		return sqlSession.selectList("selectListSvy");
	}
	
	public List<surveypoolnml> selectCdCtusfk() {
		return sqlSession.selectList("selectCdCtusfk");
	}
	

	
	public int insertSelective(surveypoolnml record) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	public int insertCtCdSN(surveypoolnml record) {
		sqlSession.insert("insertCtCdSN",record);
		return 0;
	}
	
	public int updateCtCdSN(surveypoolnml record) {
		sqlSession.update("updateCtCdSN",record);
		return 0;
	}
	
	
	public String selMaxSn() {
		return sqlSession.selectOne("selMaxSn");
	}
	
	public String selectOneCtSn(int sn) {
		return sqlSession.selectOne("selectOneCtSn", sn);
	}

	
	public List<surveypoolnml> selectByExample(surveypoolExampleNml example) {
		return sqlSession.selectList("selectByExampleSpNml", example);
	}
	
	public List<surveypoolnml> selectByExample2(surveypoolExampleNml example) {
		return sqlSession.selectList("selectByExampleSp2", example);
	}

	
	public surveypoolnml selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeySp", sn);
		
	}
	
	public surveypoolnml selectByPrimaryKey2(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeySp2", sn);
	}

	
	public int updateByExampleSelective(surveypoolnml record, surveypoolExampleNml example) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int updateByExample(surveypoolnml record, surveypoolExampleNml example) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int updateByPrimaryKeySelective(surveypoolnml record) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int updateByPrimaryKey(surveypoolnml record) {
		sqlSession.update("updateByPrimaryKeySp", record);
		return 0;
	}
	
	public int updateByPrimaryKey2(surveypoolnml record) {
		sqlSession.update("updateByPrimaryKeySp2", record);
		return 0;
	}
	


	
	
}
