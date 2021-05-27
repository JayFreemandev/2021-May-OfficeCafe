package com.office.cafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.ReplyPageDTO;
import com.office.cafe.domain.ReplyVO;
import com.office.cafe.mapper.ReplyMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyMapper mapper;
	
	@Override
	public int register(ReplyVO reply) {
		return mapper.insert(reply);

	}


	@Override
	public int modify(ReplyVO reply) {
		// TODO Auto-generated method stub
		return mapper.update(reply);
	}

	@Override
	public int remove(Integer rid) {
		// TODO Auto-generated method stub
		return mapper.delete(rid);
	}


	@Override
	public int getTotal(Integer bid) {
		// TODO Auto-generated method stub
		return mapper.getCountByBno (bid);
	}
/*
	@Override
	public ReplyVO get(Integer rid) {
		// TODO Auto-generated method stub
		return null;
	}
*/
	@Override
  public ReplyPageDTO getListPage(Integer bid, Criteria criteria) {
       
    return new ReplyPageDTO(
        mapper.getCountByBno(bid), 
        mapper.getListWithPaging(bid, criteria));
  }


	@Override
	public ReplyVO get(Integer rid) {
		return mapper.read(rid);
	}

}
