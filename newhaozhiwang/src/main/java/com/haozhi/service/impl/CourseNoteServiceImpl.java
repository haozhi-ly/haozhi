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

	@Override
	public List<CourseNote> getCourseNoteByCmid(Integer cmid) {
		return courseNoteMapper.getCourseNoteByCmid(cmid);
	}

	@Override
	public int addCourseNote(Integer userid, Integer cmid, String noteContent) {
		return courseNoteMapper.addCourseNote(userid, cmid, noteContent);
	}

	@Override
	public List<CourseNote> getPersonNote(String userid) {
		return courseNoteMapper.getPersonNote(userid);
	}

}
