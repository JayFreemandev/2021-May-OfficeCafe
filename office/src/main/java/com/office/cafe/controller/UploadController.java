package com.office.cafe.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.office.cafe.domain.FileDTO;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnailator;

@Log4j
@Controller
public class UploadController {
  private boolean checkImageType(File file) {
    
    try {
      String contentType = Files.probeContentType(file.toPath());
      return contentType.startsWith("image");  
    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return false;
  }
  
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
  
  @PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
  @ResponseBody
  // public void uploadAjaxAction(MultipartFile[] uploadFile) {
  public ResponseEntity<List<FileDTO>> uploadAjaxPost(MultipartFile[] uploadFile) {
    log.info("업데이트 에이잭스 포스트😀😀😀😀😀😀😀😀😀😀😀😀😀😀😀");
    
    List<FileDTO> list = new ArrayList();
    String uploadFolder = "C://upload";
    String uploadFolderPath = getFolder();
    // 폴더 생성
    File uploadPath = new File(uploadFolder, getFolder());
    log.info("저장 경로: " + uploadPath);
    
    // yyyy/MM/dd 식으로 생성
    if (uploadPath.exists() == false) {
      uploadPath.mkdirs();
    }
    
    for (MultipartFile multipartFile : uploadFile) {
      
      FileDTO fileDTO = new FileDTO();
      
      String uploadFileName = multipartFile.getOriginalFilename();
      
      // IE 파일 경로
      uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
      
      fileDTO.setFileName(uploadFileName);
      
      log.info("----------------------------------------------------");
      log.info("only file name: " + uploadFileName);
      log.info("Upload File Name: " + multipartFile.getOriginalFilename());
      log.info("Upload File Size: " + multipartFile.getSize());
      
      UUID uuid = UUID.randomUUID();
      
      uploadFileName = uuid.toString() + "_" + uploadFileName;
      
      try {
        // File saveFile = new File(uploadFolder, uploadFileName);
        File saveFile = new File(uploadPath, uploadFileName);
        multipartFile.transferTo(saveFile);
        
        fileDTO.setUuid(uuid.toString());
        fileDTO.setUploadPath(uploadFolderPath);
        
        // 이미지 파일 맞는지 확인
        if (checkImageType(saveFile)) {
          fileDTO.setImage(true);
          FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
          Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100, 100);
          thumbnail.close();
        }
        
        // add to List
        list.add(fileDTO);
      } catch (Exception e) {
        log.error(e.getMessage());
      }
    }
    return new ResponseEntity<List<FileDTO>>(list, HttpStatus.OK);
  }
}
