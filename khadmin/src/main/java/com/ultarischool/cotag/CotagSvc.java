package com.ultarischool.cotag;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CotagSvc {
  
  @Autowired
  private SqlSessionTemplate sqlSession;
  
  public List<CotagVO> selectTagsBycoid(String coid){
    return sqlSession.selectList("selectTagsBycoid", coid);
  }
}
