package com.office.cafe.controller;

import java.util.List;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.PageDTO;
import com.office.cafe.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	private BoardService service;
	
	@GetMapping("/list")
	public String list(Criteria criteria, Model model) {
		log.info("list" + criteria);
		model.addAttribute("list", service.geteList(criteria));
		List<BoardVO> recentList = service.getRecentList(); 
		model.addAttribute("recentList", recentList);
		int total = service.getTotal(criteria);
		
		log.info("total" + total);
		
		model.addAttribute("pageMaker", new PageDTO(criteria, total));
		
		return "index";
	}
	
	 @GetMapping("/register")
	 @PreAuthorize("isAuthentificated()")
		public void register() {

	}
	
	 @PostMapping("/register")
	 @PreAuthorize("isAuthentificated()")
	 public String register(BoardVO board, RedirectAttributes redirec) {
		 log.info("register: "+ board);
		 service.register(board);
		 redirec.addFlashAttribute("result", board.getBoard_no());
		 return "redirect:/board/list";
	 }
	 
	 @GetMapping({"/get", "/modify"})
	 public void get(@RequestParam("board_no") Integer board_no, Model model, @ModelAttribute("criteria") Criteria criteria) {
		 log.info("/get or modify");
		 model.addAttribute("board", service.get(board_no));
	 }
	 @PreAuthorize("principal.username == #board.board_creator_id")
	 @PostMapping("/modify")
	 public String modify(BoardVO board, RedirectAttributes redirec, @ModelAttribute("criteria") Criteria criteria) {
		 log.info("modify: "+ board);
		 if (service.modify(board)) {
			 redirec.addFlashAttribute("result", "success");
		 }
		 
		 redirec.addAttribute("pageNum", criteria.getPageNum());
		 redirec.addAttribute("amount", criteria.getAmount());
		 redirec.addAttribute("type", criteria.getType());
		 redirec.addAttribute("keyword", criteria.getKeyword());
		 
		 return "redirect:/board/list";
	 }
	 @PreAuthorize("principal.username == #board_creator_id")
	 @PostMapping("/remove")
	 public String remove(@RequestParam("board_no") Integer board_no, RedirectAttributes redirec, @ModelAttribute("criteria") Criteria criteria) {
		 log.info("remove: " + board_no);
		 if (service.remove(board_no)) {
			 redirec.addFlashAttribute("result", "success");
		 }
		 
		 redirec.addAttribute("pageNum", criteria.getPageNum());
		 redirec.addAttribute("amount", criteria.getAmount());
		 redirec.addAttribute("type", criteria.getType());
		 redirec.addAttribute("keyword", criteria.getKeyword());
		 
		 return "redirect:/board/list";
	 }
	 
}