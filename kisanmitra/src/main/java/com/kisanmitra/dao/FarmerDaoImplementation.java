package com.kisanmitra.dao;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dto.SavedItems;
import com.kisanmitra.dto.User;

@Component
public class FarmerDaoImplementation implements FarmerDao {

	MyConnection obj = new MyConnection();
	
	
	@Override
	public List<SavedItems> productlist(SavedItems item) {
		List<SavedItems> list = new ArrayList<SavedItems>();

		User user=new User();
		String sql = "select s.product_name,s.quantity,s.price,s.date_added from saved_items s,user u where u.user_id=s.user_id AND city=? AND product_name=? order by date_added,price limit 0,10";
      
		
		
		List<Map<String, Object>> temp = obj.getJdbcTemplate().queryForList(sql, new Object[] {item.getCity() , item.getProductName()});
		
		System.out.println("fchchg");
		
		for (Map<String, Object> p : temp) {

			SavedItems si = new SavedItems();
			si.setProductName((String)p.get("product_name"));
			si.setQuantity((Integer) p.get("quantity"));
			si.setPrice((Integer) p.get("price"));
			si.setDateAdded((Timestamp)p.get("date_added"));

			
			list.add(si);
			
		}

		return list;
	}

}
