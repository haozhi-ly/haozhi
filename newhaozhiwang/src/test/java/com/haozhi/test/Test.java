package com.haozhi.test;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Test {
	public static void main(String[] args) {
		String str="1,2,3,4,5,6,7,87,86,88,69,";
		String userid="86";
		String[] sourceStrArray = str.split(",");
		List<String> userList = new ArrayList<String>();
		Collections.addAll(userList, sourceStrArray);
		for(int i=0;i<userList.size();i++){
			if(userList.get(i).equals(userid)){
				userList.remove(userList.get(i));
			}
		}
		String str1="";
		for(int j=0;j<userList.size();j++){
			if(j==userList.size()-1){
				str1+=userList.get(j);
			}else{
				str1+=userList.get(j)+",";
			}
		}
		System.out.println(userList);
		System.out.println(str);
		System.out.println(str1);
	}
	
	
}
