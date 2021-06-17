package com.office.cafe.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.ReplyVO;
import com.office.cafe.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {
  private BoardService service;
  
  @PostMapping("/remove")
  public String remove(@RequestParam("board_no") Integer board_no, RedirectAttributes redirec, @ModelAttribute("criteria") Criteria criteria) {
    System.out.println("어드민 삭제 진입");
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
