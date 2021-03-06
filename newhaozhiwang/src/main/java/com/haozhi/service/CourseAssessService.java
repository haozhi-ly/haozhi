package com.haozhi.service;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseAssess;

public interface CourseAssessService {
	List<CourseAssess> getAssessbypageDescTime(Map<String, Object> hashmap);

	List<CourseAssess> CMcountbycourseid(String courseid);

	List<CourseAssess> getAssesstopfour(int courseid);

	List<CourseAssess> getAssessByCmidByPage(Map<String,Object> map); //通过cmid pagesize pagenum查评论分页
	
	List<CourseAssess> getAssessCountByCmid(Integer cmid); //根据cmid来查总数
	
	int addAssess(Integer userid,Integer cmid,String content); //添加评论
	
	int delcourseAssess(Integer csid);  //删除评论

}
