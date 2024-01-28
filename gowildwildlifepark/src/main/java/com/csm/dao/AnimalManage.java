package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.DBManager;
import com.csm.entity.Animal;



public class AnimalManage {
	
	
	//insert
	public int insert (Animal i)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql ="INSERT INTO gowildwildlifepark.animal (Animal_name,Animal_gender,Year_arrive,Keeper_keeper_id,Enclosure_enclosure_id,Species_species_id) VALUES (?,?,?,?,?,?)";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, i.getAnimal_name());
		pstmt.setString(2, i.getAnimal_gender());
		pstmt.setString(3, i.getYear_arrive());
		pstmt.setInt(4, i.getKeeper_keeper_id());
		pstmt.setInt(5, i.getEnclosure_enclosure_id());
		pstmt.setInt(6, i.getSpecies_species_id());
				
		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	}	 
	 public ArrayList<Animal> fetchAll() throws ClassNotFoundException, SQLException {

	        ArrayList<Animal> animal = new ArrayList<Animal>();

	        Animal a;

	        // get connection
	        DBManager dbMgr = new DBManager();
	        Connection conn = dbMgr.getConnection();

	        // query
	        String sql = "select * from gowildwildlifepark.animal";
	        PreparedStatement pstmt = conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();

	        while (rs.next()) {
	            a = new Animal(rs.getInt("Animal_id"), rs.getString("Animal_name"), rs.getString("Animal_gender"), rs.getString("Year_arrive"), rs.getInt("Keeper_keeper_id"), rs.getInt("Enclosure_enclosure_id"), rs.getInt("Species_species_id"));
	            animal.add(a);
	        }
	        return animal;
	    }
	 public int delete (int AnimalId) throws ClassNotFoundException,
		SQLException{
			int result = -1;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			String sql = "DELETE FROM `gowildwildlifepark`.`animal` " +
					"WHERE (`Animal_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, AnimalId);
			
			//execute statement
			result = pstmt.executeUpdate();
			return result;
		}
	 public ArrayList<Animal> fetchDaveorTemi()throws ClassNotFoundException, SQLException{ //select all
			ArrayList<Animal> animal = new ArrayList<Animal>();
			Animal animalInfo;
			// get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();

			// query
			String sql = "select gowildwildlifepark.animal.Animal_id, gowildwildlifepark.animal.Animal_name, gowildwildlifepark.animal.Animal_gender,\r\n"
					+ "gowildwildlifepark.animal.Year_arrive, gowildwildlifepark.keeper.Keeper_id, gowildwildlifepark.keeper.Keeper_name\r\n"
					+ "from gowildwildlifepark.animal\r\n"
					+ "inner join gowildwildlifepark.keeper\r\n"
					+ "on gowildwildlifepark.animal.Keeper_keeper_id = gowildwildlifepark.keeper.Keeper_id\r\n"
					+ "where gowildwildlifepark.keeper.Keeper_name in (\"Dave\",\"Temi\")";  //calling report 
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();


			while (rs.next()) {
				animalInfo = new Animal(
						
						rs.getInt("Animal_id"),
						rs.getString("Animal_name"),
						rs.getString("Animal_gender"),
						rs.getString("Year_arrive"),
						rs.getInt("Keeper_id"),
						rs.getString("Keeper_name"));
						 //remanining you need to add);
				animal.add(animalInfo); //add entity into collection to arraylist
			}


			return animal;
	
		}
	 public ArrayList<Animal> fetchAnimalGroupByKeeper()throws ClassNotFoundException, SQLException{ //select all
			ArrayList<Animal> animal = new ArrayList<Animal>();
			Animal animalinfobykeeper;
			// get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();

			// query
	String sql = "select gowildwildlifepark.keeper.Keeper_name, COUNT(animal.Animal_id) AS Total_Animal\r\n"
			+ "FROM animal\r\n"
			+ "INNER JOIN gowildwildlifepark.keeper ON animal.Keeper_keeper_id = gowildwildlifepark.keeper.Keeper_id\r\n"
			+ "GROUP BY gowildwildlifepark.keeper.Keeper_Name; ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();


			while (rs.next()) {
				animalinfobykeeper = new Animal(
						
						rs.getString("Keeper_name"),
						rs.getInt("Total_Animal"));
						
				animal.add(animalinfobykeeper); //add entity into collection to arraylist
			}
			return animal;
	 }
}




