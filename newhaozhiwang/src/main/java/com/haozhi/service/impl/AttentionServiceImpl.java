package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.Attention;
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
	//通过userID得到他关注的人的信息
	@Override
	public List<Attention> getAttentionInfo(String userid) {
		return attentionMapper.getAttentionInfo(userid);
	}

	@Override
	public String getAttentionCount(String userid) {
		return attentionMapper.getAttentionCount(userid);
	}

	@Override
	public List<Attention> getFansInfo(String userid) {
		return attentionMapper.getFansInfo(userid);
	}

	@Override
	public String getFansCount(String userid) {
		return attentionMapper.getFansCount(userid);

	}

}
