package com.niit.MedicartFrontEnd.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	

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
	

}
