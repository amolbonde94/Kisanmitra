package com.kisanmitra.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dto.SavedItems;

public class FarmerDaoImplementation implements FarmerDao {

	MyConnection obj = new MyConnection();
	
	
	@Override
	public List<SavedItems> productlist(String city) {
		List<SavedItems> list = new ArrayList<SavedItems>();

		String sql = "select s.product_name,s.quantity,s.price,s.date_added from saved_items s,user u where u.user_id=s.user_id AND city=? order by date_added,price limit 0,10";

		List<Map<String, Object>> temp = obj.getJdbcTemplate().queryForList(sql, new Object[] { city });

		for (Map<String, Object> p : temp) {

			SavedItems obj = new SavedItems();
			obj.setProductName(p.get("product_name").toString());
			obj.setQuantity((Integer) p.get("quantity"));
			obj.setPrice((Integer) p.get("price"));
			obj.setDateAdded(p.get("date_added").toString());

			list.add(obj);
			System.out.println(list);
		}

		return list;
	}

}
