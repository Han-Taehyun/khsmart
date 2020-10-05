package com.ultarischool.surveypool;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

@Service
public class SurveypoolSvc implements com.ultarischool.surveypool.surveypoolMapper {

	@Autowired
	private SqlSessionTemplate sqlSession;
	

	@Override
	public int countByExample(surveypoolExample example) {
		return sqlSession.selectOne("countByExampleSp", example);
	}
	
	public int getSvynoUuid(surveypoolExample example) {
		return sqlSession.selectOne("getSvynoUuid", example);
	}

	public int countByExample2(surveypoolExample example) {
		return sqlSession.selectOne("countByExampleSp2", example);
	}

	@Override
	public int deleteByExample(surveypoolExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		return sqlSession.delete("deleteByPrimaryKeySp", sn);
	}

	@Override
	public int insert(surveypool record) {
		sqlSession.insert("insertSp2", record);
		return 0;
	}

	public int deleteSvy(Integer sn) {
		sqlSession.delete("deleteSvy", sn);
		return 0;
	}

	public int insertSvypool(surveypool record) {
		sqlSession.insert("insertSp", record);
		return 0;
	}

	public List<surveypool> selectListSvType() {
		return sqlSession.selectList("selectListSvType");
	}

	public List<surveypool> selectListSvy() {
		return sqlSession.selectList("selectListSvy");
	}

	public List<surveypool> selectCdCtusfk() {
		return sqlSession.selectList("selectCdCtusfk");
	}

	@Override
	public int insertSelective(surveypool record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertCtCdSN(surveypool record) {
		sqlSession.insert("insertCtCdSN", record);
		return 0;
	}

	public int updateCtCdSN(surveypool record) {
		sqlSession.update("updateCtCdSN", record);
		return 0;
	}

	public String selMaxSn() {
		return sqlSession.selectOne("selMaxSn");
	}

	public String selectOneCtSn(int sn) {
		return sqlSession.selectOne("selectOneCtSn", sn);
	}

	@Override
	public List<surveypool> selectByExample(surveypoolExample example) {
		return sqlSession.selectList("selectByExampleSp", example);
	}

	public List<surveypool> selectByExample2(surveypoolExample example) {
		return sqlSession.selectList("selectByExampleSp2", example);
	}

	@Override
	public surveypool selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeySp", sn);

	}

	public surveypool selectByPrimaryKey2(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeySp2", sn);
	}

	@Override
	public int updateByExampleSelective(surveypool record, surveypoolExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(surveypool record, surveypoolExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(surveypool record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(surveypool record) {
		sqlSession.update("updateByPrimaryKeySp", record);
		return 0;
	}

	public int updateByPrimaryKey2(surveypool record) {
		sqlSession.update("updateByPrimaryKeySp2", record);
		return 0;
	}

	public int updateBySn(surveypool surveypool) {
		return sqlSession.update("updateBySn", surveypool);
	}

	public List<surveypool> getSurveypoolListBySvyno(int svyno) {
		return sqlSession.selectList("getSurveypoolListBySvyno", svyno);
	}

}
