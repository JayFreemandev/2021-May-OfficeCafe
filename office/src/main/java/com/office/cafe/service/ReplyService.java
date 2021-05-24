package com.office.cafe.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.ReplyVO;

public interface ReplyService {
	public int register(ReplyVO reply);

	public ReplyVO get(Integer rid);

	public int modify(ReplyVO reply);

	public int remove(Integer rid);

	//public List<BoardVO> getList();
	
	public List<ReplyVO> getList(Integer bid, Criteria criteria);

	public int getTotal(Criteria criteria);
}
