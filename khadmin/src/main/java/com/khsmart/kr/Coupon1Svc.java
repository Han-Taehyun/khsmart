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


import edumgt.common.util.SearchVO;

@Service
public class Coupon1Svc {

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;

	public Integer selectCoupon1Count(SearchVO param) {
		return sqlSession.selectOne("selectCoupon1Count", param);
	}

	public List<?> selectCoupon1List(SearchVO param) {
		return sqlSession.selectList("selectCoupon1List", param);
	}
	
	public List<?> selectCpnLcodeList() {
		return sqlSession.selectList("selectCpnLcodeList");
	}
	
	
	
	public List<?> selectCoupon1Excel(SearchVO param) {
		return sqlSession.selectList("selectCoupon1Excel", param);
	}


	public void insertCoupon1(Coupon1VO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {
			if (param.getCu_no() == null || "".equals(param.getCu_no())) {
				sqlSession.insert("insertCoupon1", param);
			} else {
				sqlSession.update("updateCoupon1", param);
			}

			
			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);
			System.out.println("데이터 저장 오류: " + ex.toString());
		}                   
	}

	public List<?> selectCoupon1FileList(String param) {
		return sqlSession.selectList("selectCoupon1FileList", param);
	}


	public Coupon1VO selectCoupon1One(String param) {
		return sqlSession.selectOne("selectCoupon1One", param);
	}
	
	public String selectMaxCPNO() {
		return sqlSession.selectOne("selectMaxCPNO");
	}



	public void deleteCoupon1One(String param) {
		sqlSession.delete("deleteCoupon1One", param);
	}


}
