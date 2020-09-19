package com.ultarischool.cotarget;

public class CotargetVO {
  private Integer sn;
  private String coid;
  private String target;

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

  public String getTarget() {
    return target;
  }

  public void setTarget(String target) {
    this.target = target;
  }

  @Override
  public String toString() {
    return "CotargetVO [sn=" + sn + ", coid=" + coid + ", target=" + target + "]";
  }

}
