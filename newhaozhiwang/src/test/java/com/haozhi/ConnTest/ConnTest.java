package com.haozhi.ConnTest;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//指明使用spring的测试框架来进行单元测试
@RunWith(SpringJUnit4ClassRunner.class)
//使用的spring的配置文件
@ContextConfiguration("classpath:spring.xml")

public class ConnTest {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	@Test
	public void testConn() {
		Connection con=sqlSessionFactory.openSession().getConnection();
		assertNotNull(con);
	}

	
}

