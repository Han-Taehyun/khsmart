package com.ultarischool.usercode;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;



@Service
public class UsercodeSvc {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@SuppressWarnings("unused")
	@Autowired
	private DataSourceTransactionManager txManager;

	public int insertCodet(UsercodeVO record) {
		sqlSession.insert("insertCodet", record);
		return 0;
	}
	
	public int updateCodet(UsercodeVO record) {
		sqlSession.update("updateCodet", record);
		return 0;
	}

	
	public List<UsercodeVO> selectByCode1() {
		return sqlSession.selectList("selectByCode1");
	}

	public UsercodeVO selectByPrimaryKey(Integer id) {
		return sqlSession.selectOne("selectCodeOne", id);
	}
	
	public String selectByCodeUni(String code) {
		return sqlSession.selectOne("selectByCodeUni", code);
	}
	
	

	public List<UsercodeVO> selectByCode3(String code3) {
		return sqlSession.selectList("selectByCode3", code3);
	}

	public List<UsercodeVO> selectListCode2(UsercodeExample example) {
		return sqlSession.selectList("selectListCode2", example);
	}

	public List<UsercodeVO> selectAll(UsercodeExample example) {
		return sqlSession.selectList("selectAllCode", example);
	}

	public int countAll(UsercodeExample example) {
		return sqlSession.selectOne("countAllCode", example);
	}

	public List<Separation> selectFieldSep() {
		return sqlSession.selectList("selectFieldSep");
	}

	public List<Separation> selectTutorSep() {
		return sqlSession.selectList("selectTutorSep");
	}
	
	public List<UsercodeVO> getUsercodeListByCode2(UsercodeExample example){
		  return sqlSession.selectList("getUsercodeListByCode2", example);
	  }
}
