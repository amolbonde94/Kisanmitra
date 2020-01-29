package com.kisanmitra.service;

import java.util.List;

import com.kisanmitra.dao.FarmerDao;
import com.kisanmitra.dao.FarmerDaoImplementation;
import com.kisanmitra.dto.SavedItems;


public class FarmerServiceImplementation implements FarmerService {

	FarmerDao farmerdao = new FarmerDaoImplementation();
	@Override
	public List<SavedItems> productlist(SavedItems item) {
		
		 List<SavedItems> temp= farmerdao.productlist(item);
			
			return temp;
		
	}
	@Override
	public boolean addproduct(SavedItems item) {

   boolean b =farmerdao.addproduct(item);
		
		
		return b;
	}
	@Override
	public Object[] acntpage(SavedItems item) {
		Object[] b =farmerdao.acntpage(item);
		
		
		return b;
	}
	

}
