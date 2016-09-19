package com.haozhi.service;


public interface AttentionService {

	int judgeAttion(Integer attention,Integer userid); //判断是否为关注人
	
	int insertAttion(Integer attention,Integer userid);
	
	int delAttion(Integer attention,Integer userid);

	int getInformation(int userid);
}
