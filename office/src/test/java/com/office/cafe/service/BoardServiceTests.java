package com.office.cafe.service;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.office.cafe.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = {org.zerock.config.RootConfig.class} )
@Log4j
public class BoardServiceTests {

	@Setter(onMethod_ = { @Autowired })
	private BoardService service;

	public void testExist() {

		log.info(service);
		assertNotNull(service);
	}


	public void testRegister() {

		BoardVO board = new BoardVO();
		board.setBoard_title("���� �ۼ��ϴ� ��");
		board.setBoard_contents("���� �ۼ��ϴ� ����");
		board.setBoard_creator_id("newbie");

		service.register(board);

		log.info("������ �Խù��� ��ȣ: " + board.getBoard_no());
	}

	@Test
	public void testGetList() {

	//	service.getList().forEach(board -> log.info(board));
		
		
		//service.getList(new Criteria(2, 10)).forEach(board -> log.info(board));
	}


	public void testGet() {

		log.info(service.get(1));
	}


	public void testDelete() {

		// �Խù� ��ȣ�� ���� ���θ� Ȯ���ϰ� �׽�Ʈ�� ��
		log.info("REMOVE RESULT: " + service.remove(2));

	}


	public void testUpdate() {

		BoardVO board = service.get(1);

		if (board == null) {
			return;
		}

		board.setBoard_title("���� �����մϴ�.");
		log.info("MODIFY RESULT: " + service.modify(board));
	}

}
