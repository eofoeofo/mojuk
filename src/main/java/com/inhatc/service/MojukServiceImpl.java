package com.inhatc.service;

import java.util.ArrayList;
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
		MojukVO temp = dao.listAll("202020").get(0);
		List tlist = new ArrayList();
		
		tlist.add(temp.isVideo1_in());
		tlist.add(temp.isGuide1_in());
		tlist.add(temp.isTukgang1_in());
		tlist.add(temp.isJindan1_in());
		
		return tlist;
	}
	
	@Override
	public void regist(MojukVO mojuk) throws Exception {
		dao.update(mojuk);
		System.out.println(mojuk);
		// TODO Auto-generated method stub
		
	}
	
	@Override
	public MojukVO read(String cnum) throws Exception {
		return dao.read(cnum);
	}
	
	@Override
	public void modify(MojukVO mojuk) throws Exception {
		dao.update(mojuk);
	}
	
	@Override
	public void remove(String cnum) throws Exception {
		dao.delete(cnum);
	}
}
