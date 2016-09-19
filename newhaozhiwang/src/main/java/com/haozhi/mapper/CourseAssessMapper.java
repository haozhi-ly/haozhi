
package com.haozhi.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.CourseAssess;

public interface CourseAssessMapper {
	List<CourseAssess> getAssessbypageDescTime(Map<String,Object> map);
	List<CourseAssess> test();
	List<CourseAssess> CMcountbycourseid(int courseid);
	List<CourseAssess> getAssesstopfour(int courseid);
	
	List<CourseAssess> getAssessByCmidByPage(Map<String,Object> map); //通过cmid,pagesize pagenum查评论分页 
	List<CourseAssess>  getAssessCountByCmid(Integer cmid); //根据cmid来查总数
	
	int addAssess(@Param("userid")Integer userid,@Param("cmid")Integer cmid,@Param("content")String content); //添加评论
	
	int delcourseAssess(@Param("csid")Integer csid);  //删除评论

}
