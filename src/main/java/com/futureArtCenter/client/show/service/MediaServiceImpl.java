package com.futureArtCenter.client.show.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.futureArtCenter.client.show.dao.MediaDAO;
import com.futureArtCenter.client.show.vo.MediaVO;

import lombok.extern.java.Log;

@Service
public class MediaServiceImpl implements MediaService {
	@Autowired
	private MediaDAO dao;

	@Override
	public List<MediaVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public List<MediaVO> planList() throws Exception {
		return dao.planList();
	}


}
