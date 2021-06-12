package com.office.cafe.service;

import java.util.List;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.MemberVO;


public interface MemberService {
	
	public void register(MemberVO vo);

	public MemberVO login(MemberVO vo);

	public boolean modify(String userid);

	public boolean remove(String userid);
}
