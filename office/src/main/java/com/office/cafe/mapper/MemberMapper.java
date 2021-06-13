package com.office.cafe.mapper;

import com.office.cafe.domain.MemberVO;

public interface MemberMapper {

  public MemberVO read(String userid);
  
  public void insert(MemberVO vo);
  public void authInsert(MemberVO vo);

  public MemberVO login(MemberVO vo);
}

