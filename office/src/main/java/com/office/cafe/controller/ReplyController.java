package com.office.cafe.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.office.cafe.domain.Criteria;
import com.office.cafe.domain.ReplyPageDTO;
import com.office.cafe.domain.ReplyVO;
import com.office.cafe.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService service;
	
	@PostMapping(value = "/new", 
				consumes = "application/json", 
				produces = { MediaType.TEXT_PLAIN_VALUE })
		
	public ResponseEntity<String> create(@RequestBody ReplyVO reply) {

		log.info("ReplyVO: " + reply);

		int insertCount = service.register(reply);

		log.info("Reply INSERT COUNT: " + insertCount);

		return insertCount == 1  
				?  new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
		
	 @GetMapping(value = "/pages/{bid}/{page}",  
			 produces = {
					 MediaType.APPLICATION_XML_VALUE,
					 MediaType.APPLICATION_JSON_UTF8_VALUE })
	 
		public ResponseEntity<ReplyPageDTO> getList(
					 @PathVariable("bid") Integer bid, 
			 		 @PathVariable("page") int page)
			  {
		Criteria criteria = new Criteria(page,10);
		
		log.info("get Reply List bid: " + bid);

    log.info("cri:" + criteria);
		
		return new ResponseEntity<>(service.getListPage(bid, criteria), HttpStatus.OK);
		}


	 
	 @GetMapping(value = "/{rid}", 
			 produces = { MediaType.APPLICATION_XML_VALUE, 
					 	MediaType.APPLICATION_JSON_UTF8_VALUE })

	 
		public ResponseEntity<ReplyVO> get(@PathVariable("rid") Integer rid) {

			log.info("get: " + rid);

			return new ResponseEntity<>(service.get(rid), HttpStatus.OK);
		}
	 
	 @DeleteMapping(value ="/{rid}",
			 		produces = { MediaType.TEXT_PLAIN_VALUE })
	  
	 public ResponseEntity<String> remove(@PathVariable("rid") Integer rid){
		 log.info("remove: " + rid);
		 
		 return service.remove(rid) == 1
				 ?  new ResponseEntity<>("success", HttpStatus.OK)
				 : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	 }
	 
	 @RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH }, 
			 		value = "/{rid}", 
			 		consumes = "application/json", 
			 		produces = {MediaType.TEXT_PLAIN_VALUE })
	 
		public ResponseEntity<String> modify(
				 @RequestBody ReplyVO reply, 
				 @PathVariable("rid") Integer rid) {

			reply.setRid(rid);

			log.info("rno: " + rid);
			log.info("modify: " + reply);

			return service.modify(reply) == 1 
					? new ResponseEntity<>("success", HttpStatus.OK)
					: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

		}
	
}
