package com.haozhi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.CourseType;
import com.haozhi.mapper.CourseTypeMapper;
import com.haozhi.service.CourseTypeService;

@Service("courseTypeService")
public class CourseTypeServiceImpl implements CourseTypeService {

	@Autowired
	private CourseTypeMapper courseTypeMapper;
	@Override
	public List<CourseType> findAlltype() {
		// TODO Auto-generated method stub
		
		return courseTypeMapper.findAllType();
	}

}
