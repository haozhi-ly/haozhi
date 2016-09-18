package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.Attention;


public interface AttentionService {

	int judgeAttion(Integer attention,Integer userid); //判断是否为关注人
	
	int insertAttion(Integer attention,Integer userid);
	
	int delAttion(Integer attention,Integer userid);

	List<Attention> getAttentionInfo(String userid);//通过userID得到他关注的人的信息

	String getAttentionCount(String userid);
}
