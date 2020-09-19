package com.khsmart.kr;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import edumgt.common.util.*;




@Service
public class Member1Svc {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataSourceTransactionManager txManager;

	
	public Member1VO selectMainStat() {
		return sqlSession.selectOne("selectMainStat");
	}
	
	
	
	
	public Member1VO selectMember1One(Member1VO param) {
		return sqlSession.selectOne("selectMember1One", param);
	}
	
	public Member1VO selectMember1Read(String param) {
		return sqlSession.selectOne("selectMember1Read", param);
	}
	
	public Member1VO selectMember1ReadInf(String param) {
		return sqlSession.selectOne("selectMember1ReadInf", param);
	}

	public void insertMember1One(Member1VO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertMember1One", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}
	
	public void updateMember1One(Member1VO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		
		
		try {

			sqlSession.update("updateMember1One", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}
	
	
	
	
	
	

	public Integer selectMember1Count(SearchVO param) {
		return sqlSession.selectOne("selectMember1Count", param);
	}

	public List<?> selectMember1List(SearchVO param) {

		return sqlSession.selectList("selectMember1List", param);
	}
	
	public List<?> selectMemberPermiList(SearchVO param) {

		return sqlSession.selectList("selectMemberPermiList", param);
	}
	
	public void delMemberPermiDel(SearchVO param) {
		sqlSession.delete("delMemberPermiDel", param);
	}
	
	public void delMemberPermiAdd(SearchVO param) {
		sqlSession.insert("addMemberPermiAdd", param);
	}
	
	public Integer selectMember1CountInf(SearchVO param) {
		return sqlSession.selectOne("selectMember1CountInf", param);
	}

	public List<?> selectMember1ListInf(SearchVO param) {

		return sqlSession.selectList("selectMember1ListInf", param);
	}
	
	public Integer selectCode1Count(SearchVO param) {
		return sqlSession.selectOne("selectCode1Count", param);
	}

	public List<?> selectCode1List(SearchVO param) {

		return sqlSession.selectList("selectCode1List", param);
	}
	
	public List<?> selectCode1SelList() {

		return sqlSession.selectList("selectCode1SelList");
	}
	
	public Member1VO selectCode1One(String param) {
		return sqlSession.selectOne("selectCode1One", param);
	}
	
	public void insertCode1One(Member1VO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			if (param.getSn().equals("")) {
				sqlSession.insert("insertCode1One", param);
			} else {
				sqlSession.insert("updateCode1One", param);
			}

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}
	
	public void insertPermi(Member1VO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			
			sqlSession.insert("insertPermi", param);
			

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}
	
	public void deleteCode1One(String param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("deleteCode1One", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}
	
	public String selectMemberPermiOne(SearchVO param) {
		return sqlSession.selectOne("selectMemberPermiOne", param);
	}
	
	public Integer selectContents1Count(SearchVO param) {
		return sqlSession.selectOne("selectContents1Count", param);
	}

	public List<?> selectContents1List(SearchVO param) {

		return sqlSession.selectList("selectContents1List", param);
	}
	
	public Integer selectContents12Count(SearchVO param) {
		return sqlSession.selectOne("selectContents12Count", param);
	}

	public List<?> selectContents12List(SearchVO param) {

		return sqlSession.selectList("selectContents12List", param);
	}

	
	
	

}
