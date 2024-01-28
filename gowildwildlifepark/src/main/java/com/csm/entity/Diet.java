package com.csm.entity;

public class Diet{
	
	private int Diet_id;
	private String Diet_type;
	private int No_of_feed;
	
	public int getDiet_id() {
		return Diet_id;
	}
	public void setDietID(int dietID) {
		Diet_id = dietID;
	}
	public String getDiet_type() {
		return Diet_type;
	}
	public void setDiet_Type(String diet_Type) {
		Diet_type = diet_Type;
	}
	public int getNo_of_feed() {
		return No_of_feed;
	}
	public void setNo_of_feed(int no_of_feed) {
		No_of_feed = no_of_feed;
	}
		
	public Diet(String diet_Type, int no_of_feed) {
		super();
		Diet_type = diet_Type;
		No_of_feed = no_of_feed;
	}
	
	public Diet(int dietID, String diet_Type, int no_of_feed) {
		super();
		Diet_id = dietID;
		Diet_type = diet_Type;
		No_of_feed = no_of_feed;
	}
	
	
}
