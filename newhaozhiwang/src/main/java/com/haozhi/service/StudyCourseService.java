package com.haozhi.service;

import java.util.List;


import com.haozhi.entity.StudyCourse;

public interface StudyCourseService {
	List<StudyCourse> getStudyCourseByCmid(Integer cmid);  //通过cmid查学院学习课程的时间 按时间递减排序 
	
	int countStudyCourseByUseridCmid(Integer userid,Integer cmid); //在添加评论的时候应该先查询用户是否已经学习此课程了

}
