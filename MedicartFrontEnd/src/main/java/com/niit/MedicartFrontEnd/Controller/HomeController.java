package com.niit.MedicartFrontEnd.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.MedicartFrontEnd.Dao.ProductDao;
import com.niit.MedicartFrontEnd.Model.Product;

@Controller
public class HomeController {

	@Autowired
	ProductDao productDao;
	

	@RequestMapping("/")
	public ModelAndView showLandingpage(){
		
		ModelAndView mv=new ModelAndView("Home");
		return mv;
	}	
	@RequestMapping("/about")
	public ModelAndView about(){
		ModelAndView mv=new ModelAndView("About");
		return mv;
	}
	
	@RequestMapping("/contact")
	public ModelAndView contact(){
		ModelAndView mv=new ModelAndView("Contact");
		return mv;
		
	}
	
	
	@RequestMapping("/buynow")
	public ModelAndView buynow(){
		
		ModelAndView mv=new ModelAndView("ShippingAdderss");
		return mv;
		
	}
	@RequestMapping("/gotoabout")
	public ModelAndView gotoabout(){
		
		ModelAndView mv=new ModelAndView("About");
		return mv;
		
	}
	
	@RequestMapping("/gotocontact")
	public ModelAndView gotocontact(){
		
		ModelAndView mv=new ModelAndView("Contact");
		return mv;
		
	}

}
