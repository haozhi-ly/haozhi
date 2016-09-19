package com.haozhi.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Test1 {
	public static void main(String[] args) {
		String groupnumber="1,2,3,4";
		String userid="5";
	
		String[] sourceStrArray = groupnumber.split(",");
		List<String> userList = new ArrayList<String>();
		Collections.addAll(userList, sourceStrArray);
		for(int i=0;i<userList.size();i++){
			if(userList.get(i).equals(userid)){
				userList.remove(userList.get(i));
			}
		}
		groupnumber=userList.toString();
		String str="";
		for(int j=0;j<userList.size();j++){
			if(j==userList.size()-1){
				str+=userList.get(j);
			}else{
				str+=userList.get(j)+",";
			}
		}
		System.out.println(userList);
		System.out.println(groupnumber);
		System.out.println(str);
	}
}
