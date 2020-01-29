package com.kisanmitra.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kisanmitra.dto.SavedItems;
@Service
public interface FarmerService {

	 List<SavedItems> productlist(SavedItems item);

	boolean addproduct(SavedItems item);

	Object[] acntpage(SavedItems item);

	
}
