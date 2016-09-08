package com.haozhi.entity;

//小组表
public class Cgroup {
	private int gid;
	private String groupname;// ---小组名
	private int createman;// --创建人
	private String createtime;// ---创建时间
	private String groupnumber;// ---小组成员（拼接）
	private int peoplecount;
	private String pic;//小组头像
	private String introduction;//小组简介
	private UserInfo userinfo;
	private String keyWord;//关键字，查询时用
	private int ctid;
	public Cgroup() {
	}

	public int getCtid() {
		return ctid;
	}

	public void setCtid(int ctid) {
		this.ctid = ctid;
	}

	public int getPeoplecount() {
		return peoplecount;
	}

	public void setPeoplecount(int peoplecount) {
		this.peoplecount = peoplecount;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public UserInfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(UserInfo userinfo) {
		this.userinfo = userinfo;
	}

	public Cgroup(int gid, String groupname, String createtime, String groupnumber, int peoplecount, String pic,
			String introduction, UserInfo userinfo) {
		super();
		this.gid = gid;
		this.groupname = groupname;
		this.createtime = createtime;
		this.groupnumber = groupnumber;
		this.peoplecount = peoplecount;
		this.pic = pic;
		this.introduction = introduction;
		this.userinfo = userinfo;
	}

	public Cgroup(int gid, String groupname, int createman, String createtime,
			String groupnumber) {
		this.gid = gid;
		this.groupname = groupname;
		this.createman = createman;
		this.createtime = createtime;
		this.groupnumber = groupnumber;
	
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

	@Override
	public String toString() {
		return "\nCgroup [gid=" + gid + ", groupname=" + groupname
				+ ", createman=" + createman + ", createtime=" + createtime
				+ ", groupnumber=" + groupnumber + ", peoplecount="
				+ peoplecount + ", pic=" + pic + ", introduction="
				+ introduction + ", userinfo=" + userinfo + ", keyWord="
				+ keyWord + ", ctid=" + ctid + "]";
	}


	













}
