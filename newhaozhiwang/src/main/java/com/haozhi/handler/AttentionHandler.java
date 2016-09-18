package com.haozhi.handler;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.haozhi.entity.Attention;
import com.haozhi.entity.Course;
import com.haozhi.entity.CourseNote;
import com.haozhi.service.AttentionService;

@Controller
@RequestMapping("/attention")
@SessionAttributes(value={"count"})
public class AttentionHandler {
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("count", new String());
	}
	
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
	
	@ResponseBody
	@RequestMapping("attentionInfo")
	public List<Attention> getAttentionInfo(String userid,ModelMap map){
		System.out.println("attentionInfo==>"+userid);
		List<Attention> attentionInfo =attentionService.getAttentionInfo(userid);
		String count=attentionService.getAttentionCount(userid);
		map.put("count", count);
		return attentionInfo;
	}
	
	
	@RequestMapping("/attentionCount")
	@ResponseBody
	public String getAttentionCount(String userid){
		String attentionCount=attentionService.getAttentionCount(userid);
		return attentionCount;
	}
}
