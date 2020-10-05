package com.khsmart.kr;


import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import edumgt.common.util.FileVO;
import edumgt.common.util.SearchVO;

@SuppressWarnings("unused")
@Service
public class MileSvc {

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;

	public Integer selectMileCount(SearchVO param) {
		return sqlSession.selectOne("selectMileCount", param);
	}

	public List<?> selectMileList(SearchVO param) {
		return sqlSession.selectList("selectMileList", param);
	}


	public void insertMile(MileVO param) {
		
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {
			if (param.getSn() == null || "".equals(param.getSn())) {
				sqlSession.insert("insertMile", param);
			} else {
				sqlSession.update("updateMile", param);
			}

			
			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);
			System.out.println("데이터 저장 오류: " + ex.toString());
		}                   
	}

	public List<?> selectMileList(String param) {
		return sqlSession.selectList("selectMileList", param);
	}


	public MileVO selectMileOne(String param) {
		return sqlSession.selectOne("selectMileOne", param);
	}
	
	

	public void deleteMileOne(String param) {
		sqlSession.delete("deleteMile", param);
	}


}
