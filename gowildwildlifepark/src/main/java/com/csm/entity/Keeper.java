package com.csm.entity;

public class Keeper {
	
	private int Keeper_id;
	private String Keeper_name;
	private String Keeper_rank;
	private String Date_of_Birth;
	
	public int getKeeper_id() {
		return Keeper_id;
	}
	public void setkeeper_id(int keeper_id) {
		Keeper_id =keeper_id;
	}
	public String getKeeper_name() {
		return Keeper_name;
	}
	public void setKeeper_name(String keeper_name) {
		Keeper_name = keeper_name;
	}
	public String getKeeper_rank() {
		return Keeper_rank;
	}
	public void setKeeper_rank(String keeper_rank) {
		Keeper_rank = keeper_rank;
	}
	
	public String getDate_of_Birth() {
		return Date_of_Birth;
	}
	
	public void setDate_of_Birth(String date_of_birth) {
		Date_of_Birth= date_of_birth;
	}
		
	public Keeper(String keeper_name,String keeper_rank, String date_of_birth) {
		super();
		Keeper_name = keeper_name;
		Keeper_rank = keeper_rank;
		Date_of_Birth = date_of_birth ;
	}
	
	public Keeper(int keeper_id, String keeper_name,String keeper_rank, String date_of_birth) {
		super();
		Keeper_id = keeper_id;
		Keeper_name = keeper_name;
		Keeper_rank = keeper_rank;
		Date_of_Birth = date_of_birth ;
	}
	
	
}