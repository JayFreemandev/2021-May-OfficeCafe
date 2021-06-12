package com.office.cafe.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.office.cafe.domain.MemberVO;
import com.office.cafe.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class CommonController {
  
  
  private BCryptPasswordEncoder pwEncoder;
  private MemberService service;
  
  @GetMapping("/register")
  public void register() {
  }
  
  @PostMapping("/register")
  public String register(MemberVO vo, RedirectAttributes redirec) {
    log.info("register: "+ vo);
    String idCount = vo.getUserid(); 
    try{
      if(idCount == null) {
        return "/register";
      }else if(idCount != null) {
        String inputPass = vo.getUserpw();
        String pwd = pwEncoder.encode(inputPass);
        vo.setUserpw(pwd);
        service.register(vo);
      }
    }catch (Exception e) {
      // TODO: handle exception
    }
    redirec.addFlashAttribute("result", vo.getUserid());
    return "redirect:/customLogin";
  }

  @GetMapping("/accessError")
  public void accessDenied(Authentication auth, Model model) {

    log.info("access Denied : " + auth);

    model.addAttribute("msg", "Access Denied");
  }
  
  @GetMapping("/customLogin")
  public void loginInput() {
  }

  @PostMapping("/customLogin")
  public void loginInput(MemberVO vo, String error, String logout, Model model) {

    log.info("error: " + error);
    log.info("logout: " + logout);
    log.info("vo" + vo);
    MemberVO login = service.login(vo);
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
