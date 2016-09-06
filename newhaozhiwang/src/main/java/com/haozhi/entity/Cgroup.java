package com.haozhi.entity;

//小组表
public class Cgroup {
	private int gid;
	private String groupname;// ---小组名
	private int createman;// --创建人
	private String createtime;// ---创建时间
	private String groupnumber;// ---小组成员（拼接）
	private int peoplecount;// --备用字段
	private String temp02;// --备用字段
	private String temp03;// --备用字段
	private String keyWord;//关键字，查询时用
	
	public Cgroup() {
	}

	public Cgroup(int gid, String groupname, int createman, String createtime,
			String groupnumber, int peoplecount, String temp02, String temp03) {
		this.gid = gid;
		this.groupname = groupname;
		this.createman = createman;
		this.createtime = createtime;
		this.groupnumber = groupnumber;
		this.peoplecount = peoplecount;
		this.temp02 = temp02;
		this.temp03 = temp03;
	}

	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public int getCreateman() {
		return createman;
	}

	public void setCreateman(int createman) {
		this.createman = createman;
	}

	public String getCreatetime() {
		return createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getGroupnumber() {
		return groupnumber;
	}

	public void setGroupnumber(String groupnumber) {
		this.groupnumber = groupnumber;
	}

	public String getTemp02() {
		return temp02;
	}

	public void setTemp02(String temp02) {
		this.temp02 = temp02;
	}

	public String getTemp03() {
		return temp03;
	}

	public void setTemp03(String temp03) {
		this.temp03 = temp03;
	}

	public int getPeoplecount() {
		return peoplecount;
	}

	public void setPeoplecount(int peoplecount) {
		this.peoplecount = peoplecount;
	}

	@Override
	public String toString() {
		return "\nCgroup [gid=" + gid + ", groupname=" + groupname
				+ ", createman=" + createman + ", createtime=" + createtime
				+ ", groupnumber=" + groupnumber + ", peoplecount="
				+ peoplecount + ", temp02=" + temp02 + ", temp03=" + temp03
				+ ", keyWord=" + keyWord + "]";
	}

	

	
}
