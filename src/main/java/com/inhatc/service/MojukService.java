package com.inhatc.service;

import java.util.List;

import com.inhatc.domain.MojukVO;

public interface MojukService {
	
	public List<MojukVO> read(MojukVO vo)throws Exception;
	
	public List<MojukVO> listview() throws Exception;
	
	public List<MojukVO> listAll(MojukVO vo) throws Exception;

	public List<MojukVO> listAll2(MojukVO vo) throws Exception;
	
	public List<MojukVO> listAll3(MojukVO vo) throws Exception;

	public void regist(MojukVO vo)throws Exception;
	public void regist2(MojukVO vo)throws Exception;
	public void regist3(MojukVO vo)throws Exception;
	
	//public String loginCheck(HashMap <String , String> hstParam);

	//public void remove(String cnum)throws Exception;

	//public void modify(MojukVO mojuk)throws Exception;
	
}
