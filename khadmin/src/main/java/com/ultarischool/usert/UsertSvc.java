package com.ultarischool.usert;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

@Service
public class UsertSvc implements com.ultarischool.usert.usertMapper {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DataSourceTransactionManager txManager;

	public List<UsertVO> selectByUsertypecode(usertExample example) {
		return sqlSession.selectList("selectByUsertypecode", example);
	}
	
	public List<UsertVO> selUserLike(String userid) {
		return sqlSession.selectList("selUserLike", userid);
	}
	
	public List<UsertVO> selVwcosinfo(String userid) {
		return sqlSession.selectList("selVwcosinfo", userid);
	}
	
	public List<UsertVO> selTtLecList(String userid) {
		return sqlSession.selectList("selTtLecList", userid);
	}
	
	

	public int selectCountByUsertypecode(usertExample example) {
		return sqlSession.selectOne("selectCountByUsertypecode", example);
	}

	public List<vwctusdtt> selectByTTContact(int ctusdtlsn) {
		return sqlSession.selectList("selectByTTContact", ctusdtlsn);
	}

	public List<usert> selectBnkCode() {
		return sqlSession.selectList("selectBnkCode");
	}
	
	public List<UsertVO> selectUserStSrch(String param) {
		return sqlSession.selectList("selectUserStSrch",param);
	}

	@Override
	public int countByExample(usertExample example) {
		return sqlSession.selectOne("countByExampleUsert", example);
	}

	public int selMaxUserNo() {
		return sqlSession.selectOne("selMaxUserNo");
	}

	@Override
	public int deleteByExample(usertExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		sqlSession.delete("deleteByPrimaryKeyUsert", sn);
		return 0;
	}

	@Override
	public int insert(usert record) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertUsert", record);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}

		return 0;
	}

	public int insertStaff(UsertVO staffVO) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);
		int insertNum = 0;

		try {

			insertNum = sqlSession.insert("insertStaff", staffVO);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}

		return insertNum;
	}

	public int insertSchTer(usert record) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertSelectiveUsert", record);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}

		return 0;
	}

	@Override
	public int insertSelective(usert record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int insertStudentByTeacher(usert usert) {
		sqlSession.insert("insertStudentByTeacher", usert);
		return 0;
	}

	@Override
	public List<usert> selectByExample(usertExample example) {
		return sqlSession.selectList("selectByExampleUsert", example);
	}

	public List<UsertVO> selectAllStaff(usertExample example) {
		return sqlSession.selectList("selectAllStaff", example);
	}

	public List<usert> selectByExample2(usertExample example) {
		return sqlSession.selectList("selectByExampleUsert2", example);
	}

	public List<usert> selectAll(usert usert) {
		return sqlSession.selectList("selectAllUsert", usert);
	}

	public List<usert> selectAll2(usert usert) {
		return sqlSession.selectList("selectAllUsert2", usert);
	}

	public List<usert> selectCtUserInfo(usert usert) {
		return sqlSession.selectList("selectCtUserInfo", usert);
	}

	public Integer countAllStaff(usertExample example) {
		return sqlSession.selectOne("countAllStaff", example);
	}

	@Override
	public usert selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyUsert", sn);
	}

	public UsertVO selectStaffBySn(Integer sn) {
		return sqlSession.selectOne("selectStaffBySn", sn);
	}

	public usert selectByPrimaryKey2(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyUsert2", sn);
	}

	public usert selectUserInfo(usert record) {
		return sqlSession.selectOne("selectUserInfo", record);
	}

	@Override
	public int updateByExampleSelective(usert record, usertExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(usert record, usertExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(usert record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public String selUCode(String utjcode) {
		return sqlSession.selectOne("selUCode", utjcode);
	}

	@Override
	public int updateByPrimaryKey(usert record) {
		sqlSession.update("updateByPrimaryKeyUsert", record);
		return 0;

	}

	public int insertCtudSt(usert usert) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertCtudSt", usert);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}

		return 0;
	}

}
