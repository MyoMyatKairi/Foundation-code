package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.csm.DBManager;
import com.csm.entity.Species;


public class SpeciesManage {
	
	
	//insert
	public int insert (Species s)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql ="INSERT INTO gowildwildlifepark.species (Species_name,Species_group,Life_style,Conversation_status) VALUES (?,?,?,?)";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, s.getSpecies_name());
		pstmt.setString(2, s.getSpecies_group());
		pstmt.setString(3, s.getLife_style());
		pstmt.setString(4, s.getConversation_status());
				
		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	}	 

	
	 public ArrayList<Species> fetchAll() throws ClassNotFoundException, SQLException {

	        ArrayList<Species> species = new ArrayList<Species>();

	        Species s;

	        // get connection
	        DBManager dbMgr = new DBManager();
	        Connection conn = dbMgr.getConnection();

	        // query
	        String sql = "select * from gowildwildlifepark.species";
	        PreparedStatement pstmt = conn.prepareStatement(sql);
	        ResultSet rs = pstmt.executeQuery();

	        while (rs.next()) {
	            s = new Species(rs.getInt("Species_id"), rs.getString("Species_name"), rs.getString("Species_group"),rs.getString("Life_style"),rs.getString("Conversation_status"));
	            species.add(s);
	        }
	        return species;
	    }
	 public int delete (int SpeciesId) throws ClassNotFoundException,
		SQLException{
			int result = -1;
			
			//get connection
			DBManager dbMgr = new DBManager();
			Connection conn = dbMgr.getConnection();
			
			//prepare statement
			String sql = "DELETE FROM `gowildwildlifepark`.`species` " +
					"WHERE (`Species_ID` = ?)";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, SpeciesId);
			
			//execute statement
			result = pstmt.executeUpdate();
			return result;
		}
	}




