package com.haozhi.service;

import java.util.List;


import com.haozhi.entity.CourseNote;

public interface CourseNoteService {
	List<CourseNote> getCourseNoteById(Integer courseid);  //通过courseid查笔记
	
	List<CourseNote> getCourseNoteByCmid(Integer cmid);  //通过cmid查笔记
	
	int addCourseNote(Integer userid,Integer cmid,String noteContent);// 添加笔记

}
