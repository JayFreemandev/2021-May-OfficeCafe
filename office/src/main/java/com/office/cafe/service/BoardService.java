package com.office.cafe.service;

import java.util.List;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;


public interface BoardService {
	
	public void register(BoardVO board);

	public BoardVO get(Integer board_no);

	public boolean modify(BoardVO board);

	public boolean remove(Integer board_no);

	//public List<BoardVO> getList();
	
	public List<BoardVO> geteList(Criteria criteria);

	public int getTotal(Criteria criteria);
}
