package com.haozhi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.mapper.AttentionMapper;
import com.haozhi.service.AttentionService;

@Service("attentionService")
public class AttentionServiceImpl implements AttentionService {
	@Autowired
	private AttentionMapper attentionMapper;

	@Override
	public int judgeAttion(Integer attention, Integer userid) {
		return attentionMapper.judgeAttion(attention, userid);
	}

	@Override
	public int insertAttion(Integer attention, Integer userid) {
		return attentionMapper.insertAttion(attention, userid);
	}

	@Override
	public int delAttion(Integer attention, Integer userid) {
		return attentionMapper.delAttion(attention, userid);
	}

	@Override
	public int getInformation(int userid) {
		// TODO Auto-generated method stub
		return attentionMapper.getInformation(userid);
	}

}
