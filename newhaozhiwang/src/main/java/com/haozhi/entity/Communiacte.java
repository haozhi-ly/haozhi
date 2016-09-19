package com.haozhi.entity;

import java.util.List;

public class Communiacte {
	private List<Integer> list;

	public Communiacte() {
		
	}
	
	public Communiacte(List<Integer> list) {
		super();
		this.list = list;
	}



	public List<Integer> getList() {
		return list;
	}

	public void setList(List<Integer> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Communiacte [list=" + list + "]";
	}
	
}
