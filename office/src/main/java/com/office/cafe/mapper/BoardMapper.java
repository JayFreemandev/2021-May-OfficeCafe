package com.office.cafe.mapper;

import java.util.List;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;

public interface BoardMapper {
	
	public void insert(BoardVO board);
	
	public BoardVO select(Integer board_no);
	
	public int update(BoardVO board);
	
	public int delete(Integer board_no);
	
	public List<BoardVO> getList();

	public void insertSelectKey(BoardVO board);
	
	public List<BoardVO> getListWithPaging(Criteria criteria);	
	
	public int getTotalCount(Criteria criteria);
	}
