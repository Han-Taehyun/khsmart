package com.ultarischool.notice;

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

@Service
public class Posts1Svc {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataSourceTransactionManager txManager;

	public Posts1VO selectPosts1One(String param) {
		return sqlSession.selectOne("selectPosts1One", param);
	}
	
	public String selectElsName(Integer etcgoid) {
		return sqlSession.selectOne("selectElsName", etcgoid);
	}
	
	

	public calendar selectCalOne(String param) {
		return sqlSession.selectOne("selectCalOne", param);
	}

	public void deleteCalOne(String param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.delete("deleteCalOne", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}

	public void insertCalOne(calendar param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			if (param.getSn().equals("")) {
				sqlSession.insert("insertCalOne", param);
			} else {
				sqlSession.insert("updateCalOne", param);
			}

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}

	public List<?> selectCalList() {
		return sqlSession.selectList("selectCalList");
	}

	public List<Posts1VO> selListB2B() {
		return sqlSession.selectList("selListB2B");
	}

	public void insertPosts1One(Posts1VO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertPosts1One", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}

	public void insertPosts1(Posts1VO param, List<FileVO> filelist, String[] fileno) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		for (FileVO f : filelist) {

			param.setImgfile(f.getFilename());
		}
		try {

			sqlSession.insert("insertPosts1One", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
	}

	public void insertB2BBoard(Posts1VO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		

		sqlSession.insert("insertB2BBoard", param);

	}

	public void updatePosts1(Posts1VO param, List<FileVO> filelist, String[] fileno) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		for (FileVO f : filelist) {

			param.setImgfile(f.getFilename());

		}

		try {
			if (!param.getImgfile().equals("")) {
				sqlSession.update("updatePosts1One", param);
			} else {

				sqlSession.update("updatePosts11One", param);
			}

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}

	}

	public Integer selectPosts1Count(SearchVO param) {
		return sqlSession.selectOne("selectPosts1Count", param);
	}

	public List<?> selectPosts1List(SearchVO param) {

		return sqlSession.selectList("selectPosts1List", param);
	}

	public Integer selectB2BBoardCount(SearchVO param) {
		return sqlSession.selectOne("selectB2BBoardCount", param);
	}

	public List<?> selectB2BBoardList(SearchVO param) {

		return sqlSession.selectList("selectB2BBoardList", param);
	}

	public Integer selectStudyPosts1Count(SearchVO param) {
		return sqlSession.selectOne("selectStudyPosts1Count", param);
	}

	public List<?> selectStudyPosts1List(SearchVO param) {

		return sqlSession.selectList("selectStudyPosts1List", param);
	}

	public void Posts1Delete(String param) {

		sqlSession.delete("posts1Delete", param);
	}

}
