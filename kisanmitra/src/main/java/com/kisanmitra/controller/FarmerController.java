package com.kisanmitra.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dto.SavedItems;
import com.kisanmitra.service.FarmerService;
import com.kisanmitra.service.FarmerServiceImplementation;

@Controller
public class FarmerController {

	@Autowired
	JdbcTemplate jdbcTemplate;

	private FarmerService farmerservice = new FarmerServiceImplementation();

	@GetMapping("/productlist")
	public ModelAndView listOfFarmer(SavedItems item, HttpServletRequest request,HttpServletResponse response) {
		
		ModelAndView mv = new ModelAndView();
		try {
			
			if(request.getSession().getAttribute("UserName")!=null)
			{
				
				item.setCity_id(Integer.parseInt(request.getSession().getAttribute("CityId").toString()));
				MyConnection obj = new MyConnection();
				obj.setJdbcTemplate(jdbcTemplate);
				
		        /* String City = request.getSession().getAttribute("City").toString(); */
				
				List<SavedItems> productlist = farmerservice.productlist(item);
				
				System.out.println(productlist.isEmpty());
				
				mv.addObject("list", productlist);
		       
			    mv.setViewName("farmer");
				
		   }
			else
			{
				mv.setViewName("signin");
		    }
		}catch(Exception e)
		{
			return mv;
		}
		
        
		return mv;
	}

	@GetMapping("/farmeraccountpage")
	public ModelAndView farmeraccount(HttpServletRequest request, HttpServletResponse response) {

		MyConnection obj = new MyConnection();
		obj.setJdbcTemplate(jdbcTemplate);
		ModelAndView mv = new ModelAndView();
		SavedItems item = new SavedItems();

		item.setUserId(request.getSession().getAttribute("UserName").toString());

		Object[] b = farmerservice.acntpage(item);
		Integer sum = (Integer) b[0];
		Integer sum1 = (Integer) b[1];
		if (request.getSession().getAttribute("UserName") != null) {
			mv.addObject("sum", sum);
			mv.addObject("sum1", sum1);
			mv.setViewName("farmeraccountpage");
		} else {
			mv.setViewName("signin");
		}
    
		//mv.setViewName("farmer");
		return mv;
	}

	@GetMapping("/stock")
	public ModelAndView stock(HttpServletRequest request, HttpServletResponse response) {

		MyConnection obj = new MyConnection();
		obj.setJdbcTemplate(jdbcTemplate);
		ModelAndView mv = new ModelAndView();

		if (request.getSession().getAttribute("UserName") != null) {
			mv.setViewName("farmerstock");
		} else {
			mv.setViewName("signin");
		}

		return mv;
	}

	@PostMapping("/addproduct")
	public ModelAndView addprod(SavedItems item, HttpServletRequest request, HttpServletResponse response) {

		MyConnection obj = new MyConnection();
		obj.setJdbcTemplate(jdbcTemplate);

		ModelAndView mv = new ModelAndView();
		item.setUserId(request.getSession().getAttribute("UserName").toString());
		boolean b = farmerservice.addproduct(item);

		if (request.getSession().getAttribute("UserName") != null) {
			mv.setViewName("farmerstock");
		} else {
			mv.setViewName("signin");
		}

		return mv;
	}

}
