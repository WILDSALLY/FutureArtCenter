package com.futureArtCenter.admin.media.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.futureArtCenter.admin.media.vo.AdminMediaVO;

import lombok.extern.java.Log;

@Log
@Repository
public class AdminMediaDAOImpl implements AdminMediaDAO {

	@Autowired
	private SqlSession session;
	private String Namespace = "com.futureArtCenter.admin.media.dao.AdminMediaDAO";

	@Override
	public void register(AdminMediaVO mvo) throws Exception {
		log.info("daoImpl...");
		session.insert(Namespace, mvo);
	}

	@Override
	public List<AdminMediaVO> list() throws Exception {
		return session.selectList(Namespace + "mediaList!");
	}

	// 포스터 이미지
	@Override
	public String getShow_poster(Integer show_no) throws Exception {
		return session.selectOne("showPoster", show_no);
	}


}
