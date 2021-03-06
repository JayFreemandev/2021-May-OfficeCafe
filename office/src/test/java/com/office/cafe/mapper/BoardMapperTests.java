package com.office.cafe.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.office.cafe.domain.BoardVO;
import com.office.cafe.domain.Criteria;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTests {

	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
	
	public void testGetList() {

		mapper.getList().forEach(board -> log.info(board));
		
	}
	
	  @Test
	  public void testSearch() {

	    Criteria criteria = new Criteria();
	    criteria.setKeyword("Ű????");
	    criteria.setType("TC");

	    List<BoardVO> list = mapper.getListWithPaging(criteria);

	    list.forEach(board -> log.info(board));
	  }
}





