package com.haozhi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.mapper.SelfMessageMapper;
import com.haozhi.service.SelfMessageService;

@Service("selfMessageService")
public class SelfMessageServiceImpl implements SelfMessageService {
	@Autowired
	private SelfMessageMapper selfMessageMapper;

	@Override
	public int insertMessage(Integer sendman, Integer receiveman, String scontent) {
		return selfMessageMapper.insertMessage(sendman, receiveman, scontent);
	}

	

}
