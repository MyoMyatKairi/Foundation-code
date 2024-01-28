package com.csm.entity;

public class Enclosure{
	
	private int Enclosure_id;
	private String Enclosure_type;
	private String Enclosure_location;
	
	public int getEnclosure_id() {
		return Enclosure_id;
	}
	public void setEnclosure_id(int enclosure_id) {
		Enclosure_id = enclosure_id;
	}
	public String getEnclosure_type() {
		return Enclosure_type;
	}
	public void setEnclosure_type(String enclosure_type) {
		Enclosure_type = enclosure_type;
	}
	public String getEnclosure_location() {
		return Enclosure_location;
	}
	public void setEnclosure_location(String enclosure_location) {
		Enclosure_location = enclosure_location;
	}
		
	public Enclosure(String enclosure_type, String enclosure_location) {
		super();
		Enclosure_type = enclosure_type;
		Enclosure_location = enclosure_location;
	}
	
	public Enclosure(int enclosure_id , String enclosure_type,String enclosure_location) {
		super();
		Enclosure_id = enclosure_id;
		Enclosure_type = enclosure_type;
		Enclosure_location = enclosure_location;
	}
	
	
}
