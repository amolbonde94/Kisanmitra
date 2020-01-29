package com.kisanmitra.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dto.CurrentStock;
import com.kisanmitra.dto.Product;

@Repository
public class CustomerDaoImplementation implements CustomerDao {

	MyConnection conn = new MyConnection();

	@Override
	public List<Product> productsDropdown() {
		List<Product> list = new ArrayList<Product>();
		System.out.println("Customer dao");

		String sql = "select product_id , product_name from product";

		List<Map<String, Object>> productDao = conn.getJdbcTemplate().queryForList(sql);

		for (Map<String, Object> map : productDao) {

			Product product = new Product();
			product.setProductName(map.get("product_name").toString());
			product.setProductId((Integer) map.get("product_id"));
			list.add(product);
			System.out.println(product.getProductName() + " " + product.getProductId());
		}

		return list;
	}

	@Override
	public List<CurrentStock> showList(Product product) {
		List<CurrentStock> list = new ArrayList<CurrentStock>();
		String sql = "select u.user_id ,u.first_name, u.last_name, u.phone, c.product_name, c.quantity, c.price from current_stock c, product p, user u where c.product_name = p.product_name AND p.product_id = ? AND u.user_id = c.user_id AND u.city_id = ?";

		List<Map<String, Object>> currentStockDao = conn.getJdbcTemplate().queryForList(sql,
				new Object[] { product.getProductId(), product.getCityID() });

		for (Map<String, Object> map : currentStockDao) {
			CurrentStock currentStock = new CurrentStock();
			currentStock.setFarmerUserId(map.get("user_id").toString());
			currentStock.setFirstName(map.get("first_name").toString());
			currentStock.setLastName(map.get("last_name").toString());
			currentStock.setPhone(map.get("phone").toString());
			currentStock.setProductName(map.get("product_name").toString());
			currentStock.setQuantity(Integer.parseInt(map.get("quantity").toString()));
			currentStock.setPrice(Integer.parseInt(map.get("price").toString()));

			list.add(currentStock);
		}
		System.out.println(list);

		return list;
	}

	@Override
	public boolean buyList(CurrentStock currentStock) {

		String sq = "select product_id from product where product_name = ?";
		int o = (int) conn.getJdbcTemplate().queryForObject(sq, new Object[] { currentStock.getProductName() },
				int.class);
		currentStock.setProductId(o);

		String sql = "insert into orders(customer_user_id,farmer_user_id,product_id,quantity,price) values(?,?,?,?,?)";
		int rows = conn.getJdbcTemplate().update(sql,
				new Object[] { currentStock.getCustomerUserId(), currentStock.getFarmerUserId(),
						currentStock.getProductId(), currentStock.getQuantity(), currentStock.getPrice() });

		String sql1 = "update current_stock set quantity = ? where user_id = ?";
		int rows1 = conn.getJdbcTemplate().update(sql1,
				new Object[] { currentStock.getQuantity(), currentStock.getFarmerUserId() });

		if (rows > 0 && rows1 > 0) {
			return true;
		} else {
			return false;
		}
	}
}
