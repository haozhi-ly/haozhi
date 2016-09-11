package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.StudyCourse;

public interface StudyCourseService {
	List<StudyCourse> getStudyCourseByCmid(Integer cmid);  //通过cmid查学院学习课程的时间 按时间递减排序 
}
