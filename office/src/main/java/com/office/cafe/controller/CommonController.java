package com.office.cafe.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.MemberVO;
import com.office.cafe.service.MemberService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class CommonController {
  
  
  private MemberService service;
  
  @GetMapping("/register")
  public void register() {
  }
  
  @PostMapping("/register")
  public String register(MemberVO vo, RedirectAttributes redirec) {
    log.info("register: "+ vo);
    service.register(vo);
    redirec.addFlashAttribute("result", vo.getUserid());
    return "redirect:/customLogin";
  }

  @GetMapping("/accessError")
  public void accessDenied(Authentication auth, Model model) {

    log.info("access Denied : " + auth);

    model.addAttribute("msg", "Access Denied");
  }

  @GetMapping("/customLogin")
  public void loginInput(String error, String logout, Model model) {

    log.info("error: " + error);
    log.info("logout: " + logout);

    if (error != null) {
      model.addAttribute("error", "Login Error Check Your Account");
    }

    if (logout != null) {
      model.addAttribute("logout", "Logout!!");
    }
  }

  @GetMapping("/customLogout")
  public void logoutGET() {

    log.info("custom logout");
  }

  @PostMapping("/customLogout")
  public void logoutPost() {

    log.info("post custom logout");
  }

}
