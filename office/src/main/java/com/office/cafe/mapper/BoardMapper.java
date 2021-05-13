package com.office.cafe.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;


import com.office.cafe.domain.BoardVO;

public interface BoardMapper {
	
	public void insert(BoardVO board);
	
	public BoardVO select(Integer board_no);
	
	public int update(BoardVO board);
	
	public int delete(Integer board_no);
	
	public List<BoardVO> getList();

	public void insertSelectKey(BoardVO board);
	
	}
