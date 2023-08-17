package in.co.rays.model;

import java.sql.Connection;
import java.sql.PreparedStatement;

import in.co.rays.util.JDBCDataSource;

public class CollegeModel {
	
	public void nextPk()throws Exception {
		
		Connection conn = JDBCDataSource.getConnection();
		
	}

}
