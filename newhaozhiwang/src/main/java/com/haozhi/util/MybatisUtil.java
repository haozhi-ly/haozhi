package com.haozhi.util;

import java.io.IOException;
import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.logging.log4j.LogManager;

/**
 * mybatis框架的工具类
 * @author admin
 *
 */
public class MybatisUtil {
	private static SqlSessionFactory factory;
	
	static{
		InputStream in= null;
		try {
			in=Resources.getResourceAsStream("mybatis.xml");
			LogManager.getLogger().debug("加载mybatis配置文件成功...");
		} catch (IOException e) {
			LogManager.getLogger().error("加载mybatis配置文件失败！！！");
		}
		
		factory=new SqlSessionFactoryBuilder().build(in);
		LogManager.getLogger().debug("根据mybatis配置文件信息构建SqlSessionFactory实例对象成功...");
	}
	
	/**
	 * 获得数据库会话连接，默认手动事务
	 * @return
	 */
	public static SqlSession getSession() {
		SqlSession session=factory.openSession();
		LogManager.getLogger().debug("根据SqlSessionFactory生产手动事务SqlSession实例对象成功....");
		return session;
	}
	
	/**
	 * 获得数据库会话连接，默认手动事务
	 * @return
	 */
	public static SqlSession getAutoTranscationSession() {
		SqlSession session=factory.openSession(true);
		LogManager.getLogger().debug("根据SqlSessionFactory生产自动事务SqlSession实例对象成功....");
		return session;
	}
	
	/**
	 * 关闭数据库会话连接
	 * @param session
	 */
	public static void close(SqlSession session){
		if(session != null){
			session.close();
		}
	}
	
}
