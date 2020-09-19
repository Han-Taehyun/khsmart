package com.ultarischool.usercode;

import edumgt.common.util.PageVO;

public class UsercodeExample extends PageVO {
  private String code1;
  private String code2;

  public String getCode1() {
    return code1;
  }

  public void setCode1(String code1) {
    this.code1 = code1;
  }

  public String getCode2() {
    return code2;
  }

  public void setCode2(String code2) {
    this.code2 = code2;
  }

  @Override
  public String toString() {
    return "UsercodeExample [code1=" + code1 + ", code2=" + code2 + "]";
  }
}
