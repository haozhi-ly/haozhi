package com.yc.dbutil;

public class test {
	public static void main(String[] args){
		DBhelper db=new DBhelper();
		String sql="select * from card where idcard=1000";
		db.FindManyMessage(sql, null);
	}
}
