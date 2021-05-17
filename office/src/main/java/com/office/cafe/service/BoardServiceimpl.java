package com.office.cafe.service;


import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;
import com.office.cafe.mapper.BoardMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BoardServiceimpl implements BoardService {

	@Autowired
	private BoardMapper mapper;

	@Override
	public void register(BoardVO board) {
		mapper.insert(board);
	}

	@Override
	public BoardVO get(Integer board_no) {
		return mapper.select(board_no);

	}

	@Override
	public boolean modify(BoardVO board) {
		return mapper.update(board) == 1;
	}

	@Override
	public boolean remove(Integer board_no) {
		return mapper.delete(board_no) == 1;
	}

	/*
	@Override
	public List<BoardVO> getList() {
		return mapper.getList();
	}
	 */
	

	@Override
	public List<BoardVO> geteList(Criteria criteria) {
		return mapper.getListWithPaging(criteria);
	}

}
