package com.office.cafe.service;

import java.util.List;

import com.office.cafe.domain.BoardVO;


public interface BoardService {
	
	public void register(BoardVO board);

	public BoardVO get(Integer board_no);

	public boolean modify(BoardVO board);

	public boolean remove(Integer board_no);

	public List<BoardVO> getList();

}
