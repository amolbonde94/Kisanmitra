package com.kisanmitra.service;

import java.util.List;

import com.kisanmitra.dao.FarmerDao;
import com.kisanmitra.dao.FarmerDaoImplementation;
import com.kisanmitra.dto.SavedItems;


public class FarmerServiceImplementation implements FarmerService {

	FarmerDao farmerdao = new FarmerDaoImplementation();
	@Override
	public List<SavedItems> productlist(String city) {
		
		 List<SavedItems> temp= farmerdao.productlist(city);
			
			return temp;
		
	}

}
