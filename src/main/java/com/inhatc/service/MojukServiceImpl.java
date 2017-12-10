package com.inhatc.service;

import java.util.ArrayList;
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
	public List<MojukVO> listAll(MojukVO vo) throws Exception {
		List<MojukVO> temp = dao.listAll(vo);
		List tlist = new ArrayList();
		
		tlist.add(temp.get(0).isVideo1_in());
		tlist.add(temp.get(0).isGuide1_in());
		tlist.add(temp.get(0).isTukgang1_in());
		tlist.add(temp.get(0).isJindan1_in());

		return tlist;
	}

	@Override
	public List<MojukVO> listAll2(MojukVO vo) throws Exception {
		List<MojukVO> temp = dao.listAll(vo);
		List clist = new ArrayList();
		clist.add(temp.get(0).isPom2_in());
		clist.add(temp.get(0).isSoc2_in());
		clist.add(temp.get(0).isWow2_in());

		return clist;
	}
	
	@Override
	public List<MojukVO> listAll3(MojukVO vo) throws Exception {
		List<MojukVO> temp = dao.listAll(vo);
		List klist = new ArrayList();
		klist.add(temp.get(0).isToc3_in());
		klist.add(temp.get(0).isFly3_in());
		klist.add(temp.get(0).isFlyup3_in());

		return klist;
	}

	@Override
	public List<MojukVO> listview() throws Exception {
		return dao.listview();
	}
	
	@Override
	public List<MojukVO> read(MojukVO vo) throws Exception {
		return dao.read(vo);
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

	/*@Override
	public void modify(MojukVO mojuk) throws Exception {
		// dao.update(mojuk);
	}*/
	
	/*@Override
	public void remove(String cnum) throws Exception {
		dao.delete(cnum);
	}
	
	@Override
	public String loginCheck(HashMap <String , String> hstParam)  {
		String identify = dao.loginIdentify(hstParam);
		return identify;
	}*/
	
}
