package com.ultarischool.usercode;

public class Separation {
  private Integer usertsn;
  private Integer id;
  private String large;
  private String medium;
  private String small;
  
  public Integer getUsertsn() {
    return usertsn;
  }

  public void setUsertsn(Integer usertsn) {
    this.usertsn = usertsn;
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getLarge() {
    return large;
  }

  public void setLarge(String large) {
    this.large = large;
  }

  public String getMedium() {
    return medium;
  }

  public void setMedium(String medium) {
    this.medium = medium;
  }

  public String getSmall() {
    return small;
  }

  public void setSmall(String small) {
    this.small = small;
  }

  @Override
  public String toString() {
    return "Separation [usertsn=" + usertsn + ", id=" + id + ", large=" + large + ", medium=" + medium + ", small="
        + small + "]";
  }
}
