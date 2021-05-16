package com.office.cafe.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.PageVO;
import com.office.cafe.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

	private BoardService service;

	/*
	 @GetMapping("/list")
	 public String list(Model model) {
	 log.info("list");
	 model.addAttribute("list", service.getList());
	 return "dogdrip";
	}
	*/
	
	@GetMapping("/list")
	public String openBoardList(@ModelAttribute("page") PageVO page, Model model) {
		List<BoardVO> boardList = service.geteListPage(page);
		model.addAttribute("boardList", boardList);

		return "/board/list";
	}
	 
	 @GetMapping("/register")
		public void register() {

	}
	
	 @PostMapping("/register")
	 public String register(BoardVO board, RedirectAttributes redirec) {
		 log.info("register: "+ board);
		 service.register(board);
		 redirec.addFlashAttribute("result", board.getBoard_no());
		 return "redirect:/board/list";
	 }
	 
	 @GetMapping("/get")
	 public void get(@RequestParam("board_no") Integer board_no, Model model) {
		 log.info("/get");
		 model.addAttribute("board", service.get(board_no));
	 }
	 
	 @PostMapping("/modify")
	 public String modify(BoardVO board, RedirectAttributes redirec) {
		 log.info("modify: "+ board);
		 if (service.modify(board)) {
			 redirec.addFlashAttribute("result", "success");
		 }
		 return "redirect:/board/list";
	 }
	 
	 @GetMapping("/remove")
	 public void remove(@RequestParam("board_no") Integer board_no, RedirectAttributes redirec) {
		 log.info("remove: " + board_no);
		 if (service.remove(board_no)) {
			 redirec.addFlashAttribute("result", "success");
		 }
	 }
	 
}