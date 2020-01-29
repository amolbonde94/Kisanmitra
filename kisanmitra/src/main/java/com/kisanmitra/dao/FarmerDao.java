package com.kisanmitra.dao;

import java.util.List;

import com.kisanmitra.dto.SavedItems;
import com.kisanmitra.dto.User;

public interface FarmerDao {

	 List<SavedItems> productlist(SavedItems item);

	 
	boolean addproduct(SavedItems item);


	Object[] acntpage(SavedItems item);
		
		

}
