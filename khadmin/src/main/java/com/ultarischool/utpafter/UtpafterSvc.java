package com.ultarischool.utpafter;
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
import com.ultarischool.utprogram.utpdetail;
import com.ultarischool.utprogram.utprogram;




@Service
public class UtpafterSvc implements com.ultarischool.utpafter.utpafterMapper{

	@Autowired
	private SqlSessionTemplate sqlSession;    
	@Autowired
	private DataSourceTransactionManager txManager;
	
	


	public utpafter selectByUtpdForm(utpafter record) {
		return sqlSession.selectOne("selectByUtpdFormUtpafter", record);

	}
	
	
	
	public List<codet> selectListSelPtype(String category){
		return sqlSession.selectList("selectListSelPtype", category);
	}
	
	public List<utpafter> selectListSelRelprog(String sn) {
		return sqlSession.selectList("selectListSelRelprog",sn);
	}
	
	public List<utpafter> selectListSelDtlprog(utprogram record) {
		return sqlSession.selectList("selectListSelDtlprog",record);
	}

	

	public List<utpafter> selectByExampleUtpd(utpafterExample example) {
		return sqlSession.selectList("selectByExampleUtpafter", example);
	}
	
	public int countByExampleUtpd(utpafterExample example) {
		return sqlSession.selectOne("countByExampleUtpafter", example);
	}
	
	public utpafter selectByKeyUtpd(utpafter record) {
		return sqlSession.selectOne("selectByKeyUtpafter", record);
		
		
	}
	
	
	public int updateByPrimaryKeyUtpd(utpafter record) {
		sqlSession.update("updateByPrimaryKeyUtpafter", record);
		return 0;
	}
	
	public int insertUtpd(utpafter record) {
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		TransactionStatus status = txManager.getTransaction(def);

		try {

			sqlSession.insert("insertUtpafter", record);

			txManager.commit(status);
		} catch (TransactionException ex) {
			txManager.rollback(status);

		}
		
		return 0;
	}
	
	public int deleteByExampleUtpd(utpafter utpafter) {
		sqlSession.delete("deleteByExampleUtpd", utpafter);
		return 0;
	}




	@Override
	public int countByExample(utpafterExample example) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public int deleteByExample(utpafterExample example) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public int insert(utpafter record) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public int insertSelective(utpafter record) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public List<utpafter> selectByExample(utpafterExample example) {
		// TODO Auto-generated method stub
		return null;
	}




	@Override
	public int updateByExampleSelective(utpafter record, utpafterExample example) {
		// TODO Auto-generated method stub
		return 0;
	}




	@Override
	public int updateByExample(utpafter record, utpafterExample example) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
