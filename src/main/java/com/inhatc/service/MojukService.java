package com.inhatc.service;

import java.util.List;

import com.inhatc.domain.MojukVO;

public interface MojukService {
	
	public void regist(MojukVO mojuk)throws Exception;
	
	public MojukVO read(String cnum)throws Exception;
	
	public void modify(MojukVO mojuk)throws Exception;
	
	public void remove(String cnum)throws Exception;
	
	public List<MojukVO> listAll() throws Exception;

}
