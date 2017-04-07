package com.niit.MedicartFrontEnd.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.MedicartFrontEnd.Dao.UserDao;
import com.niit.MedicartFrontEnd.Model.User;

@Controller
public class UserController {
	@Autowired
	 private HttpSession session;
	
	
	@Autowired
	UserDao userDao;
	
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String register(@ModelAttribute("user")User user){
		userDao.add(user); 
		session.setAttribute("registermsg", "Welcome to MedICArt"  + user.getUserName());
		session.setAttribute("useremail", user.getEmail());
		return "Home";
		
	}
	@RequestMapping(value="/validate" ,method=RequestMethod.POST)
	public ModelAndView validate(@RequestParam("email")String email,@RequestParam("password")String password){
		
		if(userDao.validate(email, password)==true){
			
			
			User user=userDao.getByEmail(email);
		
			
			
			if(user.getRole().equals("admin")){
				
				ModelAndView mv=new ModelAndView("AdminProductInventory");
				mv.addObject("isAdmin", "true");
				session.setAttribute("successmsg", "Welcome  "  + user.getUserName());
				
				return mv;	
			}
			else{
				ModelAndView mv=new ModelAndView("Home");
				
				session.setAttribute("usermsg", "Welcome  "  + user.getUserName());
				session.setAttribute("useremail", user.getEmail());
			
				
				return mv;
			}
			
		}
		else{
			ModelAndView mv=new ModelAndView("Home");
			mv.addObject("invalid","Invalid Credentials..Please Login Again..");
			return mv;
		}
		
 		
	}
	
	@RequestMapping("/gotohome")
	public ModelAndView gotohomeagain(){
		ModelAndView mv=new ModelAndView("Home");
		return mv;
		
	}

	 @RequestMapping("/logout")
	 public ModelAndView validatelogout(){
		 
		 ModelAndView mv=new ModelAndView("Home");
		 session.invalidate();
		 
		 return mv;
	 
	 }
	 
	 

}
