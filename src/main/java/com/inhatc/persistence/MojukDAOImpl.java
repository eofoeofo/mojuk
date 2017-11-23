package com.inhatc.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import com.inhatc.domain.MojukVO;
import org.springframework.stereotype.Repository;

@Repository
public class MojukDAOImpl implements MojukDAO {

	@Inject
	private SqlSession session;

	private static final String namespace = "com.inhatc.mapper.MojukMapper";

	@Override
	public String getTime() {

		return session.selectOne(namespace + ".getTime");
	}

	@Override
	public void insertMojuk(MojukVO vo) {
		session.insert(namespace + ".insertMojuk", vo);
	}

	@Override
	public MojukVO readMojuk(String cnum) throws Exception {
		return session.selectOne(namespace + ".selectAlert", cnum);
	}

	@Override
	public void update(MojukVO vo) throws Exception {
		System.out.println(vo.isVideo1_in());
		System.out.println(vo.isGuide1_in());
		System.out.println(vo.isTukgang1_in());
		System.out.println(vo.isJindan1_in());
		System.out.println(vo.getCnum());
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(String cnum) throws Exception {
		session.delete(namespace + ".delete", cnum);
	}

	@Override
	public List<MojukVO> listAll(String cnum)
			throws Exception {
		
		return session.selectList(namespace + ".listAll", cnum);
		
	}

	@Override
	public MojukVO read(String cnum) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}