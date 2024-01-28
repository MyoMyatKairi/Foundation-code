package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.csm.DBManager;
import com.csm.entity.Keeper;


public class KeeperManage {
	
	
	//insert
	public int insert (Keeper k)throws ClassNotFoundException, SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql = "INSERT INTO gowildwildlifepark.keeper (Keeper_name,Keeper_rank,Date_of_Birth) Values(?,?,?)";
				

		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		//first and second parameters inserted 1. type and location
		pstmt.setString(1, k.getKeeper_name());
		pstmt.setString(2, k.getKeeper_rank());
		pstmt.setString(3, k.getDate_of_Birth());
		

		//3. execute statement
		result = pstmt.executeUpdate();
		
		return result;
	}	 
	
	public ArrayList<Keeper> fetchAll() throws ClassNotFoundException, SQLException {

        ArrayList<Keeper> keeper = new ArrayList<Keeper>();

        Keeper k;

        // get connection
        DBManager dbMgr = new DBManager();
        Connection conn = dbMgr.getConnection();

        // query
        String sql = "select * from gowildwildlifepark.keeper";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            k = new Keeper(rs.getInt("Keeper_id"), rs.getString("Keeper_name"), rs.getString("Keeper_rank"), rs.getString("Date_of_Birth"));
           keeper.add(k);
        }
        return keeper;
    }
	public int delete (int KeeperID) throws ClassNotFoundException,
	SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql = "DELETE FROM `gowildwildlifepark`.`keeper` " +
				"WHERE (`Keeper_ID` = ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, KeeperID);
		
		//execute statement
		result = pstmt.executeUpdate();
		return result;
	}
}


