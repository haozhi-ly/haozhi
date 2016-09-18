
package com.haozhi.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.haozhi.entity.CourseNote;

public interface CourseNoteMapper {
	List<CourseNote> getCourseNoteById(Integer courseid);  //通过courseid查笔记
	
	List<CourseNote> getCourseNoteByCmid(Integer cmid);  //通过cmid查笔记
	
	int addCourseNote(@Param("userid")Integer userid,@Param("cmid")Integer cmid,@Param("noteContent")String noteContent);// 添加笔记

	List<CourseNote> getPersonNote(String userid);//通过userid查笔记
}
