package com.niit.MedicartFrontEnd.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/about")
	public ModelAndView about(){
		ModelAndView mv=new ModelAndView("About");
		return mv;
	}
	

}
