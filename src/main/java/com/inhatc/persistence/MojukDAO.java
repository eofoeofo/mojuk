package com.inhatc.persistence;

import java.util.List;
import java.util.HashMap;

import com.inhatc.domain.MojukVO;

public interface MojukDAO {
	
	public String getTime();
	
	public void insertMojuk(MojukVO vo);
	
	public List<MojukVO> read(MojukVO vo) throws Exception;
	
	public void update(MojukVO vo) throws Exception;
	
	public void update2(MojukVO vo) throws Exception;
	
	public void update3(MojukVO vo) throws Exception;
	
	public void delete(String cnum) throws Exception;
	
	public MojukVO readMojuk(String cnum)throws Exception;
	
	public List<MojukVO> listAll() throws Exception;

	/*public List<MojukVO> listAll2() throws Exception;
	
	public List<MojukVO> listAll3() throws Exception;*/
	
	public String loginIdentify(HashMap <String , String> hstParam);

	public List<MojukVO> listview() throws Exception;

}
