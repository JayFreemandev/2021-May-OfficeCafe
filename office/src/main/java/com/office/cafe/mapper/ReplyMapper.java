package com.office.cafe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(ReplyVO reply);
	
	public ReplyVO read(Integer rid);
	
	public int delete(Integer rid);
	
	public int update(ReplyVO reply);
	
	public List<ReplyVO> getListWithPaging(@Param("bid") Integer bid, @Param("criteria") Criteria criteria);	
	
	public int getTotalCount(Criteria criteria);
}
