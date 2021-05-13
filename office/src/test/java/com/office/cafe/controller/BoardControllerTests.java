package com.office.cafe.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)

//Test for Controller
@WebAppConfiguration

@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" })
//Java Config
//@ContextConfiguration(classes = {
//org.zerock.config.RootConfig.class,
//org.zerock.config.ServletConfig.class} )
@Log4j
public class BoardControllerTests {

	@Setter(onMethod_ = { @Autowired })
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}


	public void testList() throws Exception {

		log.info(
				mockMvc.perform(MockMvcRequestBuilders.get("/board/list"))
				.andReturn()
				.getModelAndView().getModelMap());
	}
	
	@Test
	public void testRegister() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/register")
				.param("board_title", "현재 공사중입니다")
				.param("board_contents", "떨어지면 죽습니다.")
				.param("board_creator_id", "공사일")
				).andReturn().getModelAndView().getViewName();
		log.info(resultPage);
	}
	

	public void testGet() throws Exception{
		log.info(mockMvc.perform(MockMvcRequestBuilders.get("/board/get")
				.param("board_no", "1"))
				.andReturn()
				.getModelAndView().getViewName());
	}

	public void testModify() throws Exception {
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/modify")
				.param("board_no", "1")
				.param("board_title", "현재 공사중입니다")
				.param("board_contents", "떨어지면 죽습니다.")
				.param("board_creator_id", "순맨")
				).andReturn().getModelAndView().getViewName();
		log.info(resultPage);
	}
	

	public void testRemove() throws Exception{
		String resultPage = mockMvc.perform(MockMvcRequestBuilders.post("/board/remove")
				.param("board_no", "1"))
				.andReturn()
				.getModelAndView().getViewName();
	}
}
