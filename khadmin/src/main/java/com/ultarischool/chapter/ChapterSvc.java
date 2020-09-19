package com.ultarischool.chapter;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.ultarischool.course.CourseVO;



@Service
public class ChapterSvc {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataSourceTransactionManager txManager;

	public List<ChapterVO> selectAllChapter(ChapterExample example) {
		return sqlSession.selectList("selectAllChapter", example);
	}

	public List<ChapterVO> selListCourse() {
		return sqlSession.selectList("selListCourse");
	}

	public Integer countAllChapter(ChapterExample example) {
		return sqlSession.selectOne("countAllChapter", example);
	}
	
	
	public ChapterVO selCourseTitle(Integer param) {
		return sqlSession.selectOne("selCourseTitle",param);
	}
	
	
	public ChapterVO selectChapterOne(Integer param) {
		return sqlSession.selectOne("selectChapterOne",param);
	}
	
	
	
	
	public void insertChapter(ChapterVO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertChapter", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);
			System.out.println("Chapter 데이터 저장 오류: " + ex.toString());
		}
	}

	public void updateChapter(ChapterVO param) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.update("updateChapter", param);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);
			System.out.println("Chapter 데이터 저장 오류: " + ex.toString());
		}
	}
	
	
	
	
}
