package com.kisanmitra.connection;

import org.springframework.jdbc.core.JdbcTemplate;

public class MyConnection {
	private static JdbcTemplate jdbcTemplate;

	
	
	public MyConnection() {
		super();
		
	}



	public static JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}



	public static void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		MyConnection.jdbcTemplate = jdbcTemplate;
	}

	
	
	
}
