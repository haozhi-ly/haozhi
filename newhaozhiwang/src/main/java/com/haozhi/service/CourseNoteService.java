package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.CourseNote;

public interface CourseNoteService {
	List<CourseNote> getCourseNoteById(Integer courseid);  //通过courseid查笔记
}
