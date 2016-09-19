package com.haozhi.handler;


import java.util.ArrayList;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestBody;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.haozhi.entity.Communiacte;
import com.haozhi.entity.Attention;
import com.haozhi.entity.Course;
import com.haozhi.entity.CourseNote;

import com.haozhi.service.AttentionService;
import com.haozhi.util.HaozhiProtocol;

import io.goeasy.GoEasy;

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
		List<Integer> list=new ArrayList<Integer>();
		list.add(attention);
		Communiacte communiacte=new Communiacte(list);
		HaozhiProtocol<Communiacte> content=new HaozhiProtocol<Communiacte>(HaozhiProtocol.Inform, communiacte);
		System.out.println(content.toString());
		GoEasy g=new GoEasy("4ea18126-cec1-4cce-8569-ad314901d30d");
		//g.publish("eb367e1f-1b28-4ce2-a32d-cd5347de7816","Hello, GoEasy!");
		g.publish("eb367e1f-1b28-4ce2-a32d-cd5347de7816",content.toString());
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
	public List<Attention> getAttentionInfo(String userid){
		System.out.println("attentionInfo==>"+userid);
		List<Attention> attentionInfo =attentionService.getAttentionInfo(userid);
		return attentionInfo;
	}
	
	@ResponseBody
	@RequestMapping(value="/getInformation",method=RequestMethod.POST)
	public int getInformation(int userid){
		LogManager.getLogger().debug("getInformation 到达...");
		int result = attentionService.getInformation(userid);
		return result;
	}
	
	
	
	@RequestMapping("/attentionCount")
	@ResponseBody
	public String getAttentionCount(String userid){
		String attentionCount=attentionService.getAttentionCount(userid);
		return attentionCount;
	}
	
	@RequestMapping("/fansInfo")
	@ResponseBody
	public List<Attention> getFans(String userid){
		List<Attention> fans=attentionService.getFansInfo(userid);
		return fans;
	}
	
	@RequestMapping("/fansCount")
	@ResponseBody
	public String getFansCount(String userid){
		String fansCount=attentionService.getFansCount(userid);
		return fansCount;
	}
}
