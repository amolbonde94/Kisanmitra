package com.kisanmitra.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kisanmitra.dao.CustomerDao;
import com.kisanmitra.dao.CustomerDaoImplementation;
import com.kisanmitra.dto.CurrentStock;
import com.kisanmitra.dto.Product;

@Service
public class CustomerServiceImplementation implements CustomerService {

	@Override
	public List<Product> productsDropdown() {
		System.out.println("Customer service");
		CustomerDao customerDao = new CustomerDaoImplementation();

		List<Product> productService = customerDao.productsDropdown();
		if (productService != null) {
			return productService;
		} else {
			return null;
		}

	}

	@Override
	public List<CurrentStock> showList(Product product) {
		CustomerDao customerDao = new CustomerDaoImplementation();
		List<CurrentStock> farmerList = customerDao.showList(product);
		if(farmerList != null) {
			return farmerList;
		}else{
			return null;
		}
	}

	@Override
	public boolean buyList(CurrentStock currentStock) {
		CustomerDao customerDao = new CustomerDaoImplementation();
		System.out.println("customer seru=vide");
		boolean b = customerDao.buyList(currentStock);
		System.out.println("customer  wapas seru=vide");

		if(b) {
			return true;
		}else {
			return false;
		}
	
	}

}
