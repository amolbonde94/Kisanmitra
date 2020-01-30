package com.kisanmitra.service;

import java.util.List;

import com.kisanmitra.dto.CurrentStock;
import com.kisanmitra.dto.Product;

public interface CustomerService {

	List<Product> productsDropdown();
	List<CurrentStock> showList(Product product);
	boolean buyList(CurrentStock currentStock);
	

}
