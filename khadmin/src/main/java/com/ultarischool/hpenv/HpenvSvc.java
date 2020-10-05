package com.ultarischool.hpenv;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;



@Service
public class HpenvSvc implements com.ultarischool.hpenv.hpenvMapper {

	@Autowired
	private SqlSessionTemplate sqlSession;

	@Override
	public int countByExample(hpenvExample example) {
		return sqlSession.selectOne("countByExampleHe", example);
	}

	public int countByExampleLine(Integer param) {
		return sqlSession.selectOne("countByExampleLine", param);
	}

	public List<hpenv> selectByExampleLine(Integer param) {
		return sqlSession.selectList("selectByExampleLine", param);
	}

	@Override
	public int deleteByExample(hpenvExample example) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int delhpenv2(hpenv hpv) {
		sqlSession.delete("delhpenv2",hpv);
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

	public List<hpenv> selListCmsBig() {
		return sqlSession.selectList("selListCmsBig");
	}

	public List<hpenv> selCmsCode() {
		return sqlSession.selectList("selCmsCode");
	}

	@Override
	public hpenv selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyHe", sn);

	}
	
	public hpenv selCmbTitle(Integer sn) {
		return sqlSession.selectOne("selCmbTitle", sn);

	}

	@Override
	public int updateByExampleSelective(hpenv record, hpenvExample example) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public List<hpenv> selectAllCourseForPck() {
		return sqlSession.selectList("selectAllCourseForPck");
	}
	
	public int insertCmsCos(hpenv record) {
		sqlSession.insert("insertCmsCos", record);
		return 0;
	}

	@Override
	public int updateByExample(hpenv record, hpenvExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(hpenv record) {
		sqlSession.update("updateByPrimaryKeyHe", record);
		return 0;
	}

	@Override
	public int updateByPrimaryKey(hpenv record) {
		// TODO Auto-generated method stub
		return 0;
	}

}
