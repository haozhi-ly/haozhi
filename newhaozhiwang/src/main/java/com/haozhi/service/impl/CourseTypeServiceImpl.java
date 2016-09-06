package com.haozhi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.haozhi.entity.CourseType;
import com.haozhi.mapper.CourseAnswerMapper;
import com.haozhi.mapper.CourseTypeMapper;
import com.haozhi.service.CourseTypeService;

@Service("courseTypeService")
public class CourseTypeServiceImpl implements CourseTypeService {

	@Autowired
	private CourseTypeMapper courseTypeMapper;
	@Override
	public int findAlltype() {
		// TODO Auto-generated method stub
		
		return courseTypeMapper.findAllType();
	}
	
	@Override
	public List<CourseType> findAlltypebypage(int pagenumber,int pagesize) {
		// TODO Auto-generated method stub
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("pagenumber",pagenumber);
		map.put("pagesize", pagesize);
		return courseTypeMapper.findAllTypeByPage(map);
	}

	@Override
	public boolean addCourseType(String typename) {
		
		try {
			courseTypeMapper.insertCourseType(typename);
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		return true;
	}

	@Override
	public boolean updateCourseType(CourseType ct) {
		try {
			courseTypeMapper.updateCourseType(ct);
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		return true;
	}

	@Override
	public boolean deleteCourseType(String[] ctid) {
		try {
			courseTypeMapper.deleteCourseType(ctid);
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		return true;
	}

	@Override
	public List<CourseType> findAllCourseType() {
		// TODO Auto-generated method stub
		return courseTypeMapper.findAllCourseType();
	}

	

	

}
