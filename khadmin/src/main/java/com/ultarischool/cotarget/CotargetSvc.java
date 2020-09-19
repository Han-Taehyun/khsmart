package com.ultarischool.cotarget;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CotargetSvc {
  @Autowired
  private SqlSessionTemplate sqlSession;

  public List<CotargetVO> selectTargetsBycoid(String coid) {
    return sqlSession.selectList("selectTargetsBycoid", coid);
  }
}
