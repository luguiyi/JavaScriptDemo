package com.data;

import java.util.ArrayList;

public class Data {

	private String[] userData ;
	
	public String[] getUserData() {
		return userData;
	}



	public void setUserData(String[] userData) {
		this.userData = userData;
	}



	//������ڷ���TRUE�������ڷ���FALSE
	public boolean checkUser(String name){
		for(int i=0;i<userData.length;i++){
			if(userData[i].equals(name)){
				return true;
			}
		}
		return false;
	}
	
}
