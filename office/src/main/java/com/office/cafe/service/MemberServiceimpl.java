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

@Service
@AllArgsConstructor
public class MemberServiceimpl implements MemberService {

	@Autowired
	private MemberMapper mapper;

  @Override
  public void register(MemberVO vo) {
   mapper.insert(vo);
  }

  @Override
  public BoardVO get(String userid) {
    // TODO Auto-generated method stub
    return null;
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


}
