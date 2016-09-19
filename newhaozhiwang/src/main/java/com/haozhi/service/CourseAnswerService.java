package com.haozhi.service;

import java.util.List;

import com.haozhi.entity.CourseAnswer;

public interface CourseAnswerService {

	List<CourseAnswer> detailQuestion(int cqid);

	boolean addAnswerbyCqid(CourseAnswer courseAnswer);

	

}
