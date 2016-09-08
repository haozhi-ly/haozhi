package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.CourseNote;
import com.haozhi.mapper.CourseNoteMapper;
import com.haozhi.service.CourseNoteService;

@Service("courseNoteService")
public class CourseNoteServiceImpl implements CourseNoteService{
	@Autowired
	private CourseNoteMapper courseNoteMapper;

	@Override
	public List<CourseNote> getCourseNoteById(Integer courseid) {
		return courseNoteMapper.getCourseNoteById(courseid);
	}

}
