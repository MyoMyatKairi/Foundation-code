package com.csm.entity;

public class Animal{
	
	private int Animal_id;
	private String Animal_name;
	private String Animal_gender;
	private String Year_arrive;
	private int Keeper_keeper_id;
	private int Enclosure_enclosure_id;
	private int Species_species_id;
	private int Keeper_id;
	private String Keeper_name;
	private int totalAnimal;
	
	public Animal(String keeper_name, int totalAnimal) {
		super();
		Keeper_name = keeper_name;
		this.totalAnimal = totalAnimal;
	}
	public int getTotalAnimal() {
		return totalAnimal;
	}
	public void setTotalAnimal(int totalAnimal) {
		this.totalAnimal = totalAnimal;
	}
	
	

	public Animal(int animal_id, String animal_name, String animal_gender, String year_arrive, int keeper_id,
			String keeper_name) {
		super();
		Animal_id = animal_id;
		Animal_name = animal_name;
		Animal_gender = animal_gender;
		Year_arrive = year_arrive;
		Keeper_id = keeper_id;
		this.Keeper_name = keeper_name;
	}
	public int getKeeper_id() {
		return Keeper_id;
	}
	public void setKeeper_id(int keeper_id) {
		Keeper_id = keeper_id;
	}
	public String getKeeper_name() {
		return Keeper_name;
	}
	public void setKeeper_name(String keeper_name) {
		this.Keeper_name = keeper_name;
	}
	public int getAnimal_id() {
		return Animal_id;
	}
	public void setAnimal_id(int animal_id) {
		Animal_id = animal_id;
	}
	public String getAnimal_name() {
		return Animal_name;
	}
	public void setAnimal_name(String animal_name) {
		Animal_name = animal_name;
	}
	public String getAnimal_gender() {
		return Animal_gender;
	}
	public void setAnimal_gender(String animal_gender) {
		Animal_gender = animal_gender;
	}
	public String getYear_arrive() {
		return Year_arrive;
	}
	public void setYear_arrive(String year_arrive) {
		Year_arrive= year_arrive;
	}
	public int getKeeper_keeper_id() {
		return Keeper_keeper_id;
	}
	public void setKeeper_keeper_id(int keeper_keeper_id) {
		Keeper_keeper_id = keeper_keeper_id;
	}
	public int getEnclosure_enclosure_id() {
		return Enclosure_enclosure_id;
	}
	public void setEnclosure_enclosure_id(int enclosure_enclosure_id) {
		Enclosure_enclosure_id = enclosure_enclosure_id;
	}
	public int getSpecies_species_id() {
		return Species_species_id;
	}
	public void setSpecies_species_id(int species_species_id) {
		Species_species_id = species_species_id;
	}
	public Animal(String animal_name,String animal_gender,String year_arrive, int keeper_keeper_id,int enclosure_enclosure_id,int species_species_id){
		super();
		Animal_name = animal_name;
		Animal_gender = animal_gender;
		Year_arrive = year_arrive;
		Keeper_keeper_id = keeper_keeper_id;
		Enclosure_enclosure_id = enclosure_enclosure_id;
		Species_species_id = species_species_id;
	}
	
	public Animal(int animal_id,String animal_name,String animal_gender,String year_arrive, int keeper_keeper_id,int enclosure_enclosure_id,int species_species_id  ) {
		super();
		Animal_id = animal_id;
		Animal_name = animal_name;
		Animal_gender = animal_gender;
		Year_arrive = year_arrive;
		Keeper_keeper_id = keeper_keeper_id;
		Enclosure_enclosure_id = enclosure_enclosure_id;
		Species_species_id = species_species_id;
	}

	
	
}
