package com.office.cafe.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class PageVO {
  
  private int currentPageNum;
  private int contentsPerPage;
  private int pageSize; // 화면 하단 페이지 사이즈
  
  private String searchKeyword;
  private String searchType;

  public PageVO() {
    this.currentPageNum = 1;
    this.contentsPerPage = 20;
    this.pageSize = 10;    // 1~10까지 페이지
  }
  
  public int getStartPage() {
	  return (currentPageNum - 1) * contentsPerPage;
  }
}
