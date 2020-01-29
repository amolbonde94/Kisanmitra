package com.kisanmitra.dao;

import java.util.List;

import com.kisanmitra.dto.CurrentStock;
import com.kisanmitra.dto.Product;

public interface CustomerDao {

	List<Product> productsDropdown();
	List<CurrentStock> showList(Product product);
	boolean buyList(CurrentStock currentStock);
}
