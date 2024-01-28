package com.csm.entity;

public class Species{
	
	private int Species_id;
	private String Species_name;
	private String Species_group;
	private String Life_style;
	private String Conversation_status;
	
	public int getSpecies_id() {
		return Species_id;
	}
	public void setSpecies_id(int species_id) {
		Species_id = species_id;
	}
	public String getSpecies_name() {
		return Species_name;
	}
	public void setSpecies_name(String species_name) {
		Species_name = species_name;
	}
	public String getSpecies_group() {
		return Species_group;
	}
	public void setSpecies_group(String species_group ) {
		Species_group = species_group;
	}
	public String getLife_style() {
		return Life_style;
	}
	public void setLife_style(String life_style ) {
		Life_style = life_style;
	}
	public String getConversation_status() {
		return Conversation_status;
	}
	public void setConversation_status(String conversation_status ) {
		Conversation_status = conversation_status;
	}
	public Species(String species_name,String species_group,String life_style, String conversation_status ){
		super();
		Species_name = species_name;
		Species_group = species_group;
		Life_style = life_style;
		Conversation_status = conversation_status;
	}
	
	public Species(int species_id,String species_name,String species_group,String life_style, String conversation_status){
		super();
		Species_id = species_id;
		Species_name = species_name;
		Species_group = species_group;
		Life_style = life_style;
		Conversation_status = conversation_status;
	}
	
	
}
