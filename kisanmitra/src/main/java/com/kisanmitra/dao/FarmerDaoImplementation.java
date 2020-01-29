package com.kisanmitra.dao;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dto.SavedItems;
import com.kisanmitra.dto.User;

@Repository
public class FarmerDaoImplementation implements FarmerDao {

	MyConnection obj = new MyConnection();
	
	
	@Override
	public List<SavedItems> productlist(SavedItems item) {
		List<SavedItems> list = new ArrayList<SavedItems>();

		User user=new User();
		String sql = "select s.product_name,s.quantity,s.price,s.date_added from saved_stock s,user u where u.user_id=s.user_id AND city_id=? AND product_name=? order by date_added,price limit 0,10";
      
		System.out.println(item.getCity_id());	
		System.out.println(item.getProductName());		
		List<Map<String, Object>> temp = obj.getJdbcTemplate().queryForList(sql, new Object[] {item.getCity_id() , item.getProductName()});
		System.out.println(temp);
		for (Map<String, Object> p : temp) {

			SavedItems si = new SavedItems();
			si.setProductName((String)p.get("product_name"));
			si.setQuantity((Integer) p.get("quantity"));
			si.setPrice((Integer) p.get("price"));
			si.setDateAdded((Timestamp)p.get("date_added"));

			
			list.add(si);
		}
		System.out.println(list);
		return list;
	}


	@Override
	public boolean addproduct(SavedItems item) {
		try {
			
		
			
		//	String sql="insert into saved_stock(user_id,product_name,quantity,price,date_added) values(?,?,?,?,now());";
		//	obj.getJdbcTemplate().update(sql,new Object[] {item.getUserId(),item.getProductName(),item.getQuantity(),item.getPrice()});
		
			obj.getJdbcTemplate().update("call SAVED_CURRENT_STOCK_ADD (?,?,?,?)", item.getUserId(),item.getProductName(),item.getQuantity(),item.getPrice());
			
			
			}catch(Exception e) {
				System.out.println(e.getMessage()+"" +"error");
				return false;
			}
		return true;
	}


	@Override
	public Object[] acntpage(SavedItems item) {
		
		String sql1="select sum(quantity*price) as pro from saved_stock where user_id=?";
		Integer sum = obj.getJdbcTemplate().queryForObject(sql1,new Object[] {item.getUserId()},Integer.class);
	
		
		String sql2="select sum(quantity*price) as pro from current_stock where user_id=?";
		Integer sum1 = obj.getJdbcTemplate().queryForObject(sql2,new Object[] {item.getUserId()},Integer.class);
		Object[] obj = new Object [] {sum,sum1};
		return obj;
	}

}
