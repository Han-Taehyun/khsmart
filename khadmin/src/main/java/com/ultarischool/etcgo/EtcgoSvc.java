package com.ultarischool.etcgo;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;







@Service
public class EtcgoSvc implements com.ultarischool.etcgo.etcgoMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	
	
	


	@Override
	public int countByExample(etcgoExample example) {
		return sqlSession.selectOne("countByExampleEtcgo", example);
	}

	@Override
	public int deleteByExample(etcgoExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		sqlSession.delete("deleteByPrimaryKeyEtcgo",sn);
		return 0;
	}

	@Override
	public int insert(etcgo record) {
		sqlSession.insert("insertEtcgo",record);
		return 0;
	}

	@Override
	public int insertSelective(etcgo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<etcgo> selectByExample(etcgoExample example) {
		return sqlSession.selectList("selectByExampleEtcgo", example);
	}
	
	public List<etcgo> selectByName(etcgo etcgo) {
		return sqlSession.selectList("selectEtcgoByName", etcgo);
	}
	
	
	public List<etcgo> selectListSidoGoName() {
		return sqlSession.selectList("selectListSidoGoNameEtcgo");
	}
	
	public List<etcgo> selectAll() {
		return sqlSession.selectList("selectEtcgoAll");
	}
	
	
	

	@Override
	public etcgo selectByPrimaryKey(Integer sn) {
		
		return sqlSession.selectOne("selectByPrimaryKeyEtcgo", sn);
	}

	@Override
	public int updateByExampleSelective(etcgo record, etcgoExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(etcgo record, etcgoExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(etcgo record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(etcgo record) {
		sqlSession.update("updateByPrimaryKeyEtcgo",record);
		return 0;
	}
	


	
	
}
