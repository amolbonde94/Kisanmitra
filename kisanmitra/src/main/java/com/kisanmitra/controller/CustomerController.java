package com.kisanmitra.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dto.CurrentStock;
import com.kisanmitra.dto.Product;
import com.kisanmitra.service.CustomerService;
import com.kisanmitra.service.CustomerServiceImplementation;


@Controller
public class CustomerController {

	@Autowired
	JdbcTemplate jdbcTemplate;

	@GetMapping("/signin")
	public ModelAndView productsDropdown(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();
		try {
			if (request.getSession().getAttribute("UserName") != null) {
				
				MyConnection conn = new MyConnection();
				conn.setJdbcTemplate(jdbcTemplate);

				CustomerService customerService = new CustomerServiceImplementation();
				List<Product> productsDropdownList = customerService.productsDropdown();

				mv.addObject("productList", productsDropdownList);

				mv.setViewName("customer");

			} else {
				mv.setViewName("signin");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mv;
	}

	

	@GetMapping("/displayFarmerList")
	public ModelAndView showList(Product product, HttpServletRequest request, HttpServletResponse response) {

		MyConnection conn = new MyConnection();
		conn.setJdbcTemplate(jdbcTemplate);

		CustomerService customerService = new CustomerServiceImplementation();

		product.setCityID(Integer.parseInt(request.getSession().getAttribute("CityId").toString()));
		List<CurrentStock> showList = customerService.showList(product);

		ModelAndView mv = new ModelAndView();
		if (showList != null) {
			mv.addObject("farmerOrderList", showList);

			if (request.getSession().getAttribute("UserName") != null) {
				
				//temp
				conn.setJdbcTemplate(jdbcTemplate);   

				List<Product> productsDropdownList = customerService.productsDropdown();
				//temp
				
				mv.addObject("productList", productsDropdownList);
				
				mv.setViewName("customer");
			} else {
				mv.setViewName("signin");
			}
		}
		return mv;
	}

	
	@GetMapping("/customer")
	public ModelAndView signOut(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		
		
		mv.setViewName("customer");
		return mv;
	}
	
	
	
	@PostMapping("/buy")
	public ModelAndView buyList(CurrentStock currentStock, HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mv = new ModelAndView();
//		String phone = request.getParameter("phone");
		int customerQuantity = Integer.parseInt(request.getParameter("customerQuantity"));

		try {
			if (request.getSession().getAttribute("UserName") != null) {

				if (currentStock.getQuantity() < customerQuantity) {
					mv.setViewName("errorpage");
				} else {
					currentStock.setQuantity(currentStock.getQuantity() - customerQuantity);
					currentStock.setCustomerUserId(request.getSession().getAttribute("UserName").toString());

					MyConnection conn = new MyConnection();
					conn.setJdbcTemplate(jdbcTemplate);

					CustomerService customerService = new CustomerServiceImplementation();
					boolean b = customerService.buyList(currentStock);
					if (b) {
						mv.setViewName("customerorderpage");
						//mv.setViewName("customer");

					} else {
						mv.setViewName("errorpage");
					}
				}
			}
		} catch (Exception e) {
			mv.setViewName("errorpage");
		}
		return mv;
	}

}
