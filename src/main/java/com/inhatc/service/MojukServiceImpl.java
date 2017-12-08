package com.inhatc.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.inhatc.domain.MojukVO;
import com.inhatc.persistence.MojukDAO;

@Service
public class MojukServiceImpl implements MojukService {

	@Inject
	private MojukDAO dao;

	@Override
	public List<MojukVO> listAll() throws Exception {
		/*MojukVO temp = dao.listAll("").get(0);
		List tlist = new ArrayList();
		
		tlist.add(temp.isVideo1_in());
		tlist.add(temp.isGuide1_in());
		tlist.add(temp.isTukgang1_in());
		tlist.add(temp.isJindan1_in());*/

		return (List)dao.listAll().get(0);
	}

	@Override
	public List<MojukVO> listAll2() throws Exception {
		/*MojukVO temp = dao.listAll2().get(0);
		List clist = new ArrayList();
		clist.add(temp.isPom2_in());
		clist.add(temp.isSoc2_in());
		clist.add(temp.isWow2_in());*/

		return (List)dao.listAll().get(0);
	}
	
	@Override
	public List<MojukVO> listAll3() throws Exception {
		/*MojukVO temp = dao.listAll3().get(0);
		List klist = new ArrayList();
		klist.add(temp.isToc3_in());
		klist.add(temp.isFly3_in());
		klist.add(temp.isFlyup3_in());*/

		return (List)dao.listAll().get(0);
	}

	@Override
	public void regist(MojukVO vo) throws Exception {
		dao.update(vo);
	}
	
	@Override
	public void regist2(MojukVO vo) throws Exception {
		dao.update2(vo);
	}
	
	@Override
	public void regist3(MojukVO vo) throws Exception {
		dao.update3(vo);
	}

	@Override
	public List<MojukVO> read(MojukVO vo) throws Exception {
		return dao.read(vo);
	}

	@Override
	public void modify(MojukVO mojuk) throws Exception {
		// dao.update(mojuk);
	}

	@Override
	public void remove(String cnum) throws Exception {
		dao.delete(cnum);
	}
	
	@Override
	public String loginCheck(HashMap <String , String> hstParam)  {
		String identify = dao.loginIdentify(hstParam);
		return identify;
	}
	
	@Override
	public List<MojukVO> listview() throws Exception {
		return dao.listview();
	}
}
