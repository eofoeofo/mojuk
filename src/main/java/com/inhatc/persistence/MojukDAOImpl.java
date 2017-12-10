package com.inhatc.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.inhatc.domain.MojukVO;

@Repository
public class MojukDAOImpl implements MojukDAO {

	@Inject
	private SqlSession session;

	private static final String namespace = "com.inhatc.mapper.MojukMapper";

	@Override
	public List<MojukVO> listview() throws Exception {
		return session.selectList(namespace + ".listview");
	}

	@Override
	public List<MojukVO> read(MojukVO vo) throws Exception {
	    
		return session.selectList(namespace + ".read", vo);
	}
	
	@Override
	public void update(MojukVO vo) throws Exception {
		System.out.println("getcnum1 : "+vo.getCnum());
		session.update(namespace + ".update", vo);
	}

	@Override
	public void update2(MojukVO vo) throws Exception {
		System.out.println("getcnum2 : "+vo.getCnum());
		session.update(namespace + ".update2", vo);
	}

	@Override
	public void update3(MojukVO vo) throws Exception {
		System.out.println("getcnum3 : "+vo.getCnum());
		session.update(namespace + ".update3", vo);
	}

	@Override
	public List<MojukVO> listAll(MojukVO vo) throws Exception {
		return session.selectList(namespace + ".listAll", vo);
	}

	/*@Override
	public List<MojukVO> listAll2() throws Exception {

		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<MojukVO> listAll3() throws Exception {

		return session.selectList(namespace + ".listAll");

	}*/
	
	/*@Override
	public void delete(String cnum) throws Exception {
		session.delete(namespace + ".delete", cnum);
	}*/

	/*@Override
	public String getTime() {

		return session.selectOne(namespace + ".getTime");
	}*/

	/*@Override
	public void insertMojuk(MojukVO vo) {
		session.insert(namespace + ".insertMojuk", vo);
	}*/

	/*@Override
	public MojukVO readMojuk(String cnum) throws Exception {
		return session.selectOne(namespace + ".selectAlert", cnum);
	}*/

	/*@Override
	public String loginIdentify(HashMap<String, String> hstParam) {
		// TODO Auto-generated method stub
		return null;
	}*/
}