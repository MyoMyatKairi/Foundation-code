package com.csm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.csm.DBManager;
import com.csm.entity.Diet;

public class DietManage {
    // insert
    public int insert(Diet c) throws ClassNotFoundException, SQLException {
        int result = -1;

        // get connection
        DBManager dbMgr = new DBManager();
        Connection conn = dbMgr.getConnection();

        // prepare statement
        String sql = "INSERT INTO gowildwildlifepark.diet (Diet_type, No_of_feed) VALUES (?, ?)";

        PreparedStatement pstmt = conn.prepareStatement(sql);

        // first and second parameters inserted 1. type and location
        pstmt.setString(1, c.getDiet_type());
        pstmt.setInt(2, c.getNo_of_feed());

        // execute statement
        result = pstmt.executeUpdate();

        return result;
    }

    public ArrayList<Diet> fetchAll() throws ClassNotFoundException, SQLException {

        ArrayList<Diet> diet = new ArrayList<Diet>();

        Diet c;

        // get connection
        DBManager dbMgr = new DBManager();
        Connection conn = dbMgr.getConnection();

        // query
        String sql = "select * from gowildwildlifepark.diet";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();

        while (rs.next()) {
            c = new Diet(rs.getInt("Diet_id"), rs.getString("Diet_type"), rs.getInt("No_of_feed"));
            diet.add(c);
        }
        return diet;
    }
    public int delete (int DietId) throws ClassNotFoundException,
	SQLException{
		int result = -1;
		
		//get connection
		DBManager dbMgr = new DBManager();
		Connection conn = dbMgr.getConnection();
		
		//prepare statement
		String sql = "DELETE FROM `gowildwildlifepark`.`diet` " +
				"WHERE (`Diet_ID` = ?)";
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, DietId);
		
		//execute statement
		result = pstmt.executeUpdate();
		return result;
	}
}
