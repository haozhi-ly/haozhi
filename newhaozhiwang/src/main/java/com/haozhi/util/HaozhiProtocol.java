package com.haozhi.util;

import com.google.gson.Gson;

public class HaozhiProtocol<T> {
	private int code;//传输的数据类型
	private T data;//传输的数据

	public static final int Inform=1;
	public static final int LinkLetter=2;
	public static final int Answer=3;
	public static final int QuestionAndAnswer=4;
	
	public HaozhiProtocol() {
	}

	public HaozhiProtocol(int code, T data) {
		this.code = code;
		this.data = data;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
	
	public String toString(){
		Gson gson=new Gson();
		return gson.toJson(this);
	}
	
}
