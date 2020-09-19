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

@Service
public class Coupon2Svc {

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;

	public Integer selectCoupon2Count(SearchVO param) {
		return sqlSession.selectOne("selectCoupon2Count", param);
	}

	public List<?> selectCoupon2List(SearchVO param) {
		return sqlSession.selectList("selectCoupon2List", param);
	}


	public void insertCoupon2(Coupon2VO param,List<FileVO> filelist, String[] fileno) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {
			if (param.getId() == null || "".equals(param.getId())) {
				sqlSession.insert("insertCoupon2", param);
			} else {
				sqlSession.update("updateCoupon2", param);
			}

			if (fileno != null) {
				HashMap<String, String[]> fparam = new HashMap<String, String[]>();
				fparam.put("fileno", fileno);
				sqlSession.insert("deleteCoupon2File", fparam);
			}

			for (FileVO f : filelist) {
				f.setParentPK(param.getId());
				sqlSession.insert("insertCoupon2File", f);
			}
			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);
			System.out.println("데이터 저장 오류: " + ex.toString());
		}                   
	}

	public List<?> selectCoupon2FileList(String param) {
		return sqlSession.selectList("selectCoupon2FileList", param);
	}


	public Coupon2VO selectCoupon2One(String param) {
		return sqlSession.selectOne("selectCoupon2One", param);
	}
	
	public String selectMaxId() {
		return sqlSession.selectOne("selectMaxId");
	}



	public void deleteCoupon2One(String param) {
		sqlSession.delete("deleteCoupon2One", param);
	}


}
