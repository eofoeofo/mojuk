package com.inhatc.ws;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.inhatc.domain.MojukVO;
import com.inhatc.persistence.MojukDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })

public class MojukDAOTest {
	
	@Inject
	private MojukDAO dao;
	
	@Test
	public void testInsertMojuk() throws Exception {
		MojukVO vo = new MojukVO();
		vo.setCnum("1");
		vo.setDepart("depa");
		vo.setUsername("idid");
		vo.setUserpw("pw");
		vo.setEmail("ee");
		
		dao.insertMojuk(vo);
	}
	
	@Test
	public void testSelectMojuk() throws Exception {
		
		dao.readMojuk("cnum");
	}

}