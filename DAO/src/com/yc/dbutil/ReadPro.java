package com.yc.dbutil;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import com.yc.logutil.LogUtil;


public class ReadPro extends Properties{
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	private static ReadPro readpro=new ReadPro();
	
	private ReadPro(){
		InputStream is=ReadPro.class.getClassLoader().getResourceAsStream("db.properties");
		try {
			this.load(is);
			is.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			LogUtil.log.error(e.toString());
		}
	}
	public static ReadPro getReadPro(){
		return readpro;
	}
	
}
