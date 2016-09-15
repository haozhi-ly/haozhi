
package com.haozhi.mapper;

import java.util.List;

import com.haozhi.entity.CourseAnswer;

public interface CourseAnswerMapper {
	List<CourseAnswer> detailAnswerbycqid(int cqid);

	int addAnswer(CourseAnswer courseAnswer);
}
