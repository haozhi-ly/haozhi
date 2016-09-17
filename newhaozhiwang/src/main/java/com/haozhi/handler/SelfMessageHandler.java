package com.haozhi.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.service.SelfMessageService;

@Controller
@RequestMapping("/selfMessage")
public class SelfMessageHandler {
	@Autowired
	private SelfMessageService selfMessageService;
	
	@ResponseBody
	@RequestMapping(value="/insertMessage",method=RequestMethod.POST)
	public int insertMessage(Integer sendman,Integer receiveman,String scontent){
		LogManager.getLogger().debug("insertMessage 到达...");
		int result = selfMessageService.insertMessage(sendman, receiveman, scontent);
		return result;
	}

}
