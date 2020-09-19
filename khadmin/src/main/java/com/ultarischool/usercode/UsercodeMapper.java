package com.ultarischool.usercode;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface UsercodeMapper {
  List<UsercodeVO> selectByCode3(@Param("code3") String code3);
}
