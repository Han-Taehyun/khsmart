package com.ultarischool.utprogram;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionException;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.ultarischool.codet.codet;




@Service
public class UtprogramSvc implements com.ultarischool.utprogram.utprogramMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	@Override
	public int countByExample(utprogramExample example) {
		return sqlSession.selectOne("countByExampleUtprogram", example);
	}
	
	
	

	@Override
	public int deleteByExample(utprogramExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteByPrimaryKey(Integer sn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(utprogram record) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertUtprogram", record);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
		
		return 0;
	}
	
	

	@Override
	public int insertSelective(utprogram record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<utprogram> selectByExample(utprogramExample example) {
		return sqlSession.selectList("selectByExampleUtprogram", example);
	}
	
	
	
	public List<codet> selectListSelPtype(String category){
		return sqlSession.selectList("selectListSelPtype", category);
	}
	
	public List<utprogram> selectListSelRelprog(String sn) {
		return sqlSession.selectList("selectListSelRelprog",sn);
	}
	
	public List<utprogram> selectListSelDtlprog(utprogram record) {
		return sqlSession.selectList("selectListSelDtlprog",record);
	}

	@Override
	public utprogram selectByPrimaryKey(Integer sn) {
		return sqlSession.selectOne("selectByPrimaryKeyUtprogram", sn);
		
		
	}

	@Override
	public int updateByExampleSelective(utprogram record, utprogramExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByExample(utprogram record, utprogramExample example) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKeySelective(utprogram record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(utprogram record) {
		sqlSession.update("updateByPrimaryKeyUtprogram", record);
		return 0;
	}
	

	public List<utpdetail> selectByExampleUtpd(utpdetailExample example) {
		return sqlSession.selectList("selectByExampleUtpd", example);
	}
	public int countByExampleUtpd(utpdetailExample example) {
		return sqlSession.selectOne("countByExampleUtpd", example);
	}
	public utpdetail selectByKeyUtpd(utpdetail record) {
		return sqlSession.selectOne("selectByKeyUtpd", record);
		
		
	}
	public utpdetail selectByUtpdForm(utpdetail record) {
		return sqlSession.selectOne("selectByUtpdForm", record);

	}
	
	public int updateByPrimaryKeyUtpd(utpdetail record) {
		sqlSession.update("updateByPrimaryKeyUtpd", record);
		return 0;
	}
	
	public int insertUtpd(utpdetail record) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertUtpd", record);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
		
		return 0;
	}
	
	public int deleteByExampleUtpd(utpdetail utpdetail) {
		sqlSession.delete("deleteByExampleUtpd", utpdetail);
		return 0;
	}
	
	
}
