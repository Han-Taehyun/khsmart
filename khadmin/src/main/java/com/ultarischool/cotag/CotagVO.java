package com.ultarischool.cotag;

public class CotagVO {
  private Integer sn;
  private String coid;
  private String cont;
  
  public Integer getSn() {
    return sn;
  }
  public void setSn(Integer sn) {
    this.sn = sn;
  }
  public String getCoid() {
    return coid;
  }
  public void setCoid(String coid) {
    this.coid = coid;
  }
  public String getCont() {
    return cont;
  }
  public void setCont(String cont) {
    this.cont = cont;
  }
  
  @Override
  public String toString() {
    return "CotagVO [sn=" + sn + ", coid=" + coid + ", cont=" + cont + "]";
  }
}
