package com.ultarischool.usercode;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.ultarischool.usert.UsertVO;

@Service
public class UsercodeSvc {
  @Autowired
  private SqlSessionTemplate sqlSession;
  @Autowired
  private DataSourceTransactionManager txManager;

  public List<UsercodeVO> selectByCode3(String code3) {
    return sqlSession.selectList("selectByCode3", code3);
  }

  public List<UsercodeVO> selectListCode2(UsercodeExample example) {
    return sqlSession.selectList("selectListCode2", example);
  }

  public List<UsercodeVO> selectAll(UsercodeExample example) {
    return sqlSession.selectList("selectAllCode", example);
  }

  public int countAll(UsercodeExample example) {
    return sqlSession.selectOne("countAllCode", example);
  }

  public List<Separation> selectFieldSep() {
    return sqlSession.selectList("selectFieldSep");
  }

  public List<Separation> selectTutorSep() {
    return sqlSession.selectList("selectTutorSep");
  }
}
