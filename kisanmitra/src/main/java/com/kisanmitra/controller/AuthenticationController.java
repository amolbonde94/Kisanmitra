package com.kisanmitra.controller;





import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;


import com.kisanmitra.connection.MyConnection;
import com.kisanmitra.dao.AuthenticationDao;
import com.kisanmitra.dto.SavedItems;
import com.kisanmitra.dto.User;
import com.kisanmitra.service.AuthenticationService;
import com.kisanmitra.service.AuthenticationServiceImplementation;
import com.kisanmitra.service.FarmerService;
import com.kisanmitra.service.FarmerServiceImplementation;


@Controller
public class AuthenticationController implements ErrorController {
	@Autowired
	JdbcTemplate jdbcTemplate;
	private static final String Path="/error";
	
	private AuthenticationService authenticationService =new AuthenticationServiceImplementation() ;
	
	@GetMapping("/")
	public ModelAndView signinPage(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		MyConnection obj = new MyConnection();
		obj.setJdbcTemplate(jdbcTemplate);
		
		if(request.getSession().getAttribute("UserName")!=null) {
			Integer i = (Integer)request.getSession().getAttribute("RollID");
			if(i==3) 
			{
			
				
					mv.setViewName("admin");
				
			}
			else if(i==1) 
			{
				mv.setViewName("farmer");
			}
			else if(i==2) 
			{
				mv.setViewName("customer");
			}
			
			else {
				mv.setViewName("farmerAndcustomer");
			}
			
		}else
		    mv.setViewName("signin");
		
		return mv;
	}
	
	
	
	@PostMapping("/signin")
	public ModelAndView validateUser(@Valid User user, HttpServletRequest request,HttpServletResponse response) {
		
		ModelAndView mv = new ModelAndView();
		try {
			MyConnection obj = new MyConnection();
			obj.setJdbcTemplate(jdbcTemplate);
			
			User dbuser = authenticationService.loginUser(user);
		
		if(dbuser!=null) {
			request.getSession().setAttribute("UserName",dbuser.getUserId());
			request.getSession().setAttribute("RollID",dbuser.getRoleId());
			request.getSession().setAttribute("City",dbuser.getCity());
			request.getSession().setAttribute("FirstName",dbuser.getFirstName());
			
			if(dbuser.getRoleId()==3) 
			{
			
					mv.setViewName("admin");
				
			}
			
			else if(dbuser.getRoleId()==1) 
			{
				mv.setViewName("farmer");
			}
			else if(dbuser.getRoleId()==2) 
			{
				mv.setViewName("customer");
			}
			else {
				mv.setViewName("farmerAndcustomer");
			}
		}
		else
		    mv.setViewName("signin");
	 
		return mv;
		
		} catch(Exception e) 
		{
			mv.setViewName("signin");
		}
		
		return mv;
		
	}
	
	
 	@GetMapping("/signup")
	 
	public ModelAndView signUpPage() {
		MyConnection obj = new MyConnection();
		obj.setJdbcTemplate(jdbcTemplate);
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("signup");
		
		
		return mv;
	}
	
 	
 	
 	
	
 	
 	
	@PostMapping("/signup")
	public ModelAndView registerUserToDb(@Valid User user, HttpServletRequest request,HttpServletResponse response) {
		System.out.println(user.getFirstName());
		boolean b = authenticationService.createUser(user);
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("name", user.getFirstName());
		
		mv.setViewName("successfull");
		
		return mv;
	}
	
	@GetMapping("/signout")
	public ModelAndView signOut(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		request.getSession().invalidate();
		
		mv.setViewName("signin");
		return mv;
	}
	
	@GetMapping("/farmerhomepage")
	public ModelAndView farmerHome(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		
		if(request.getSession().getAttribute("UserName")!=null)
		{
		
		mv.setViewName("farmer");
		}
		else
			mv.setViewName("signin");
		 
		return mv;
	}
	
	@GetMapping("/customerhomepage")
	public ModelAndView customerHome(HttpServletRequest request,HttpServletResponse response) {
		ModelAndView mv = new ModelAndView();
		
		
	
		if(request.getSession().getAttribute("UserName")!=null)
		{
		
		mv.setViewName("customer");
		}
		
		else 
			
			mv.setViewName("signin");
		
		return mv;
	}
	
	
	@GetMapping("/forget")
	public ModelAndView forgotpage() {

		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("forget");
		
		return mvc;
	}
	
	
	@PostMapping("/forget")
	public ModelAndView forgotpage2(User user,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
	
		MyConnection obj = new MyConnection();
		
		obj.setJdbcTemplate(jdbcTemplate);
		
		authenticationService.updateUser(user);
		
		mv.setViewName("signin");
		return mv;
	}
	
	
	@GetMapping(Path)
	public ModelAndView Error() {
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("errorpage");
		
		return mvc;
	}
	
	@PostMapping(Path)
	public ModelAndView error1() {
		
		ModelAndView mvc = new ModelAndView();
		mvc.setViewName("errorpage");
		
		return mvc;
	}



	@Override
	public String getErrorPath() {
		
		return Path;
	}

	
}


