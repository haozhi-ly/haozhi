package com.haozhi.handler;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.haozhi.service.AttentionService;

@Controller
@RequestMapping("/attention")
public class AttentionHandler {
	
	@Autowired
	private AttentionService attentionService;
	
	@ResponseBody
	@RequestMapping(value="/judgeAttion",method=RequestMethod.GET)
	public int judgeAttion(Integer attention,Integer userid){
		LogManager.getLogger().debug("judgeAttion 到达...");
		int count = attentionService.judgeAttion(attention, userid);
		return count;
	}
	
	@ResponseBody
	@RequestMapping(value="/insertAttion",method=RequestMethod.POST)
	public int insertAttion(Integer attention,Integer userid){
		LogManager.getLogger().debug("insertAttion 到达...");
		int result = attentionService.insertAttion(attention, userid);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/delAttion",method=RequestMethod.POST)
	public int delAttion(Integer attention,Integer userid){
		LogManager.getLogger().debug("delAttion 到达...");
		int result = attentionService.delAttion(attention, userid);
		return result;
	}
	
	
	
}
