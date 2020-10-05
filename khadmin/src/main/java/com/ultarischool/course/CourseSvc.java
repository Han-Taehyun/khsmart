package com.ultarischool.course;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import org.springframework.jdbc.datasource.DataSourceTransactionManager;

@SuppressWarnings("unused")
@Service
public class CourseSvc {
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataSourceTransactionManager txManager;

	public List<CourseVO> selTGCode() {
		return sqlSession.selectList("selTGCode");
	}

	public List<CourseVO> selTaG() {
		return sqlSession.selectList("selTaG");
	}

	public List<CourseVO> selCodeType() {
		return sqlSession.selectList("selCodeType");
	}

	public List<CourseVO> selCTT() {
		return sqlSession.selectList("selCTT");
	}

	public List<CourseVO> selListPkg() {
		return sqlSession.selectList("selListPkg");
	}

	public CourseVO selPackTitle(Integer param) {
		return sqlSession.selectOne("selPackageOne", param);
	}

	public List<CourseVO> selectAllCourse(CourseExample example) {
		return sqlSession.selectList("selectAllCourse", example);
	}

	public List<CourseVO> selectAllCourseForPck() {
		return sqlSession.selectList("selectAllCourseForPck");
	}

	public Integer countAllCourse(CourseExample example) {
		return sqlSession.selectOne("countAllCourse", example);
	}

	public List<CourseVO> selectAllCoursePkg(CourseExample example) {
		return sqlSession.selectList("selectAllCoursePkg", example);
	}

	public Integer countAllCoursePkg(CourseExample example) {
		return sqlSession.selectOne("countAllCoursePkg", example);
	}

	public List<CourseVO> selectAllPackage(CourseExample example) {
		return sqlSession.selectList("selectAllPackage", example);
	}

	public Integer countAllPackage(CourseExample example) {
		return sqlSession.selectOne("countAllPackage", example);
	}

	public Integer selMxCsn() {
		return sqlSession.selectOne("selMxCsn");
	}

	public CourseVO selCourseOne(Integer sn) {
		return sqlSession.selectOne("selCourseOne", sn);
	}

	public CourseVO selPckCsOne(Integer sn) {
		return sqlSession.selectOne("selPckCsOne", sn);
	}

	public Integer delPckCsOne(Integer sn) {
		return sqlSession.delete("delPckCsOne", sn);
	}

	public CourseVO selPackageOne(Integer sn) {
		return sqlSession.selectOne("selPackageOne", sn);
	}

	public List<CourseVO> selectAllCourseUser(CourseExample example) {
		return sqlSession.selectList("selectAllCourseUser", example);
	}

	public Integer countAllCourseUser(CourseExample example) {
		return sqlSession.selectOne("countAllCourseUser", example);
	}

	public List<CourseVO> selectAllPkgUser(CourseExample example) {
		return sqlSession.selectList("selectAllPkgUser", example);
	}

	public Integer countAllPkgUser(CourseExample example) {
		return sqlSession.selectOne("countAllPkgUser", example);
	}

	public List<CourseVO> selectAllRateUser(CourseExample example) {
		return sqlSession.selectList("selectAllRateUser", example);
	}

	public Integer countAllRateUser(CourseExample example) {
		return sqlSession.selectOne("countAllRateUser", example);
	}

	public void insertPkgCos(CourseVO param) {

		sqlSession.insert("insertPkgCos", param);

	}

	public void insertCourse(CourseVO param) {

		sqlSession.insert("insertCourse", param);

	}
	
	public void insCosUserAdmin(CourseVO param) {

		sqlSession.insert("insCosUserAdmin", param);

	}

	public void updateCourse(CourseVO param) {

		sqlSession.update("updateCourse", param);

	}

	public void insertPkg(CourseVO param) {

		sqlSession.insert("insertPkg", param);

	}

	public void updatePkg(CourseVO param) {

		sqlSession.update("updatePkg", param);

	}

}
