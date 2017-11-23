package com.inhatc.persistence;

import java.util.List;

import com.inhatc.domain.MojukVO;

public interface MojukDAO {
	
	public String getTime();
	
	public void insertMojuk(MojukVO vo);
	
	public MojukVO read(String cnum) throws Exception;
	
	public void update(MojukVO vo) throws Exception;
	
	public void delete(String cnum) throws Exception;
	
	public List<MojukVO> listAll(String cnum) throws Exception;

	public MojukVO readMojuk(String cnum)throws Exception;



}
