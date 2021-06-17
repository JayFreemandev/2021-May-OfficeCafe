package com.office.cafe.service;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.ReplyPageDTO;
import com.office.cafe.domain.ReplyVO;
import com.office.cafe.mapper.BoardMapper;
import com.office.cafe.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ReplyServiceImpl implements ReplyService {
	
  @Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
  @Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;

	@Transactional
	@Override
	public int register(ReplyVO reply) {
	  
	  log.info("register......" + reply); // �̰� getBid �� ������� �� �������Ű��? �غ��ߵɰŰ�����
	  log.info("register......" + reply.getBid());

	  //� �������������� ���� ����°ǵ�
	  // 1 �� �˾Ƽ� amount �� �ν��Ͽ�? �� �ΰ��� �Ķ���ͷ� ����;�ӵ�
	  // ��
	  boardMapper.updateReplyCnt(reply.getBid(), 1); 
	  
		return mapper.insert(reply);

	}

	@Override
	public int modify(ReplyVO reply) {
		// TODO Auto-generated method stub
		return mapper.update(reply);
	}

	@Transactional
	@Override
	public int remove(Integer rid) {
	//	ReplyVO reply = mapper.read(rid);
	//	boardMapper.updateReplyCnt(reply.getBid(), -1);
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
