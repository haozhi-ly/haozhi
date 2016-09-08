
package com.haozhi.mapper;

import java.util.List;

import com.haozhi.entity.CourseNote;

public interface CourseNoteMapper {
	List<CourseNote> getCourseNoteById(Integer courseid);  //通过courseid查笔记
}
