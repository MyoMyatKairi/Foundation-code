package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.csm.DBManager;
import com.csm.entity.Enclosure;


public class EnclosureManage {
	
	
	//insert
	public int insert (Enclosure e)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql ="INSERT INTO gowildwildlifepark.enclosure (Enclosure_type, Enclosure_location) VALUES (?, ?)";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, e.getEnclosure_type());
		pstmt.setString(2, e.getEnclosure_location());
				
		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	}	 


public ArrayList<Enclosure> fetchAll() throws ClassNotFoundException, SQLException {

    ArrayList<Enclosure> Enclosure = new ArrayList<Enclosure>();

    Enclosure e;

    // get connection
    DBManager dbMgr = new DBManager();
    Connection conn = dbMgr.getConnection();

    // query
    String sql = "select * from gowildwildlifepark.Enclosure";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();

    while (rs.next()) {
        e = new Enclosure(rs.getInt("Enclosure_id"),rs.getString("Enclosure_type"), rs.getString("Enclosure_location"));
        Enclosure.add(e);
    }
    return Enclosure;
}
public int delete (int EnclosureId) throws ClassNotFoundException,
SQLException{
	int result = -1;
	
	//get connection
	DBManager dbMgr = new DBManager();
	Connection conn = dbMgr.getConnection();
	
	//prepare statement
	String sql = "DELETE FROM `gowildwildlifepark`.`enclosure` " +
			"WHERE (`Enclosure_ID` = ?)";
	
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setInt(1, EnclosureId);
	
	//execute statement
	result = pstmt.executeUpdate();
	return result;
}
}


