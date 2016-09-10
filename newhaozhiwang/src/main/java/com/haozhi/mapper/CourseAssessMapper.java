
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import com.haozhi.entity.CourseAssess;

public interface CourseAssessMapper {
	List<CourseAssess> getAssessbypageDescTime(Map<String,Object> map);
	List<CourseAssess> test();
	List<CourseAssess> CMcountbycourseid(int courseid);
	
	List<CourseAssess> getAssessByCmidByPage(Map<String,Object> map); //通过cmid,pagesize pagenum查评论分页 
	List<CourseAssess>  getAssessCountByCmid(Integer cmid); //根据cmid来查总数
}
