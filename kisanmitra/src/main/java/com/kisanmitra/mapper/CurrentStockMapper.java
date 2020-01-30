package com.kisanmitra.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.kisanmitra.dto.CurrentStock;

public class CurrentStockMapper implements RowMapper<CurrentStock>{

	@Override
	public CurrentStock mapRow(ResultSet rs, int rowNum) throws SQLException {
		CurrentStock currentStock = new CurrentStock();
		
		currentStock.setProductName(rs.getString("product_name"));
		currentStock.setCustomerUserId(rs.getString("customer_user_id"));
		currentStock.setProductId(rs.getInt("product_id"));
		System.out.println(currentStock.getProductName());
		return currentStock;
	}
	
}
