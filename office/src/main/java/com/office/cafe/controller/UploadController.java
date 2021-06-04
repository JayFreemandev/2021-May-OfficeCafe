package com.office.cafe.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class UploadController {
  
  
  private String getFolder() { // 한 폴더에 쌓이면 속도 저하 해결책
    SimpleDateFormat simpleDataFormat = new SimpleDateFormat("yyyy-MM-dd");
    
    Date date = new Date();
    
    String str = simpleDataFormat.format(date);
    
    return str.replace("-", File.separator);
  }
  
  @GetMapping("/uploadAjax")
  public void uploadAjax() {
    log.info("upload ajax");
  }
  
  @PostMapping("/uploadAjaxAction")
  public void uploadAjaxAction(MultipartFile[] uploadFile) {
    
    log.info("업데이트 에이잭스 포스트😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀");
    
    String uploadFolder="C://upload";
    
    //폴더 생성
    File uploadPath = new File(uploadFolder, getFolder());
    log.info("저장 경로: "+ uploadPath);
    
    // yyyy/MM/dd 식으로 생성
    if (uploadPath.exists() == false) {
      uploadPath.mkdirs();
    }
    
    for(MultipartFile multipartFile : uploadFile) {
      
      log.info("----------------------------------------------------");
      log.info("Upload File Name: "+ multipartFile.getOriginalFilename());
      log.info("Upload File Size: "+ multipartFile.getSize());
      
      String uploadFileName=multipartFile.getOriginalFilename();
      
      // IE 파일 경로
      uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
      log.info("only file name: "+ uploadFileName);
      
      UUID uuid = UUID.randomUUID();
      
      uploadFileName = uuid.toString() + "_" + uploadFileName;
      
      //File saveFile = new File(uploadFolder, uploadFileName);
      File saveFile = new File(uploadPath, uploadFileName);
      
      try {
        multipartFile.transferTo(saveFile);
      }catch (Exception e) {
        log.error(e.getMessage());
      }
    }
  }
}
