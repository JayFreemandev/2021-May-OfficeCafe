package com.office.cafe.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	

	@RequestMapping("/")
	public String home() {
		
		
		return "/board/list";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		
		
		return "boardDetail";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		
		
		return "admin";
	}
	
	@RequestMapping("/admin2")
	public String admin2() {

		return "index2";
	}
	
	@RequestMapping("/dogdrip")
	public String detail2() {
		return "dogdrip";
	}
	
	
	
	
}
