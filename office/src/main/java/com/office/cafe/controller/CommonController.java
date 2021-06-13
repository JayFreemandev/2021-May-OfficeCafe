package com.office.cafe.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.office.cafe.domain.MemberVO;
import com.office.cafe.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class CommonController {
  
  
  private JavaMailSender mailSender;
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
  
  /* 이메일 인증 */
  @GetMapping("/mailCheck")
  @ResponseBody
  public String mailCheckGET(String email) throws Exception{
      
      /* 뷰(View)로부터 넘어온 데이터 확인 */
      log.info("이메일 데이터 전송 확인");
      log.info("인증번호 : " + email);
              
      /* 인증번호(난수) 생성 */
      Random random = new Random();
      int checkNum = random.nextInt(888888) + 111111;
      log.info("인증번호 " + checkNum);
      
      /* 이메일 보내기 */
      String setFrom = "molu1334@gmail.com";
      String toMail = email;
      String title = "회원가입 인증 이메일 입니다.";
      String content = 
              "홈페이지를 방문해주셔서 감사합니다." +
              "<br><br>" + 
              "인증 번호는 " + checkNum + "입니다." + 
              "<br>" + 
              "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
/*      try {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
        helper.setFrom(setFrom);
        helper.setTo(toMail);
        helper.setSubject(title);
        helper.setText(content,true);
        mailSender.send(message);
        
    }catch(Exception e) {
        e.printStackTrace();
    }
 */     
      String num = Integer.toString(checkNum);
      
      return num;
  }

}
