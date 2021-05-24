package com.office.cafe.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.office.cafe.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
// Java Config
// @ContextConfiguration(classes = { org.zerock.config.PersistenceConfig.class
// })
@Log4j
public class ReplyMapperTests {

	// �뀒�뒪�듃 �쟾�뿉 �빐�떦 踰덊샇�쓽 寃뚯떆臾쇱씠 議댁옱�븯�뒗吏� 諛섎뱶�떆 �솗�씤�븷 寃�
	private Long[] bnoArr = { 3145745L, 3145744L, 3145743L, 3145742L, 3145741L };

	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;
	
	@Test 
	public void testUpdate() {
		Integer rid = 1;
		ReplyVO reply = mapper.read(rid);
		reply.setContents("내 바지를 보고 헉해");
		int count = mapper.update(reply);
		log.info("update count" + count);
	}
	


}
