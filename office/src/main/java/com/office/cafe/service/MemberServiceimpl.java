package com.office.cafe.service;


import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.MemberVO;
import com.office.cafe.mapper.BoardMapper;
import com.office.cafe.mapper.MemberMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
@Log4j
@Service
@AllArgsConstructor
public class MemberServiceimpl implements MemberService {

	@Autowired
	private MemberMapper mapper;

  @Override
  public void register(MemberVO vo) {
   log.info(vo);
   mapper.insert(vo);
   mapper.authInsert(vo);
  }

  @Override
  public MemberVO login(MemberVO vo) {
    log.info(vo);
    return mapper.login(vo);
  }
  @Override
  public boolean modify(String userid) {
    // TODO Auto-generated method stub
    return false;
  }

  @Override
  public boolean remove(String userid) {
    // TODO Auto-generated method stub
    return false;
  }

  @Override
  public MemberVO idCheck(String userid) {
    log.info("아이디 서비스 진입 아이디 서비스 진입 아이디 서비스 진입아이디 서비스 진입 :" + userid);
    return mapper.idCheck(userid);
  }



}
