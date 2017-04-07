package com.niit.MedicartFrontEnd.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.MedicartFrontEnd.Dao.CartDao;
import com.niit.MedicartFrontEnd.Dao.ContactDao;
import com.niit.MedicartFrontEnd.Dao.OrderDao;
import com.niit.MedicartFrontEnd.Dao.ProductDao;
import com.niit.MedicartFrontEnd.Dao.ShippingDao;
import com.niit.MedicartFrontEnd.Dao.UserDao;
import com.niit.MedicartFrontEnd.Model.Cart;
import com.niit.MedicartFrontEnd.Model.Contact;
import com.niit.MedicartFrontEnd.Model.OrderDetails;
import com.niit.MedicartFrontEnd.Model.Product;
import com.niit.MedicartFrontEnd.Model.ShippingAddress;
import com.niit.MedicartFrontEnd.Model.User;

@Controller
public class BillingAddress {

	@Autowired
	HttpSession session;
	@Autowired
	CartDao cartDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	ShippingDao shippingDao;
	@Autowired
	ContactDao contactDao;
	
	@Autowired
	User user;
	
	@Autowired
	UserDao userDao;
	@Autowired
	OrderDao od;
	ShippingAddress sp;
	
	int shippingId;
	int productId;
	Product pp;
	OrderDetails or;
	
	@RequestMapping("/checkout")
	public ModelAndView checkout(){

			String email=session.getAttribute("useremail").toString();
			ModelAndView mv=new ModelAndView("BillingAddress");
			user=userDao.getByEmail(email);
			mv.addObject("user", user);
			return mv;	
	}
	@RequestMapping("/shippingpage")
	public ModelAndView getShipping(){
		ModelAndView mv=new ModelAndView("ShippingAdderss");
		return mv;
	}
	
	@RequestMapping(value="/orderconfirm",method=RequestMethod.POST)
	public ModelAndView postShipping(@ModelAttribute("s")ShippingAddress sp){
		String email=session.getAttribute("useremail").toString();
		
		sp.setEmail(email);
		shippingDao.add(sp);
		shippingId=sp.getShippingId();
		ModelAndView mv=new ModelAndView("forward:/orderconfirm2");
		
		return mv;
	}
	
	@RequestMapping("/orderconfirm2")
	public ModelAndView order(){
		ModelAndView mv=new ModelAndView("Order");
		String email=session.getAttribute("useremail").toString();
		
		if(productId==0){

		List<Cart>obj=cartDao.getCartbyUser(email);
		mv.addObject("allcart",obj);
		 double sum=cartDao.getGrandTotal(email);
		 mv.addObject("grandtotal", sum);
		//Quantity=add.getQuantitybyProductId(productid);
		//mv.addObject("q", Quantity);
		
		}
		else{
			
			mv.addObject("p","msg is written to make p not empty"); 
			mv.addObject("c",od.getByOrderId(productId));
			
			//or.getQuantity();
		
		}
		User u=userDao.getByEmail(email);
		mv.addObject("a",u);
		ShippingAddress uu=shippingDao.getById(shippingId);
		mv.addObject("b",uu);
		return mv;
	}
	@RequestMapping("/billingpage/{productid}")
	public ModelAndView buynow(@ModelAttribute("p") Product p,@PathVariable("productid") int productid) {
		if(session.getAttribute("registermsg")==null && session.getAttribute("usermsg")==null){
			ModelAndView mv=new ModelAndView("forward:/abc/"+productid);
			Product obj=productDao.getById(productid);
			
			
			
			mv.addObject("p",obj);
			mv.addObject("b4cart", "Please signup or login before buying product... ");
			 productId = productid;
		       pp=obj;
		    
			return mv;
			}
		else
		{
		
			ModelAndView mv=new ModelAndView("forward:/checkout");
       Product  obj=productDao.getById(productid);

		String mail=session.getAttribute("useremail").toString();
		
       int pid=obj.getId();
		String pname=obj.getProductName();
		String cat=obj.getProductCategory();
		double pprice=obj.getProductPrice();
		double totprice=pprice;
		or=new OrderDetails();
		or.setEmail(mail);
		or.setProductId(pid);
		or.setProductName(pname);
		or.setProductCategory(cat);
		or.setProductPrice(pprice);
		// or.setQuantity(qty);
		or.setTotalPrice(totprice);
		od.add(or);
      
		productId = or.getOrderId();
       pp=obj;
      // Quantity=add.getQuantitybyProductId(productid);
     //  System.out.println("Imran is checking pp contains product obj or nor by product name "+pp.getProductName());
     //  System.out.println(productID);
      // System.out.println("Quantity ="+Quantity);
       
    
    
		return mv;

		}
	}

	@RequestMapping(value="/contact",method=RequestMethod.POST)
	public ModelAndView contact(@ModelAttribute("c")Contact contact){
		ModelAndView mv=new ModelAndView("Home");
		contactDao.add(contact);
		
		return mv;
		
		
	}
	@RequestMapping("/thankyou")
	public ModelAndView thankyou(){
		ModelAndView mv=new ModelAndView("ThankYou");
		mv.addObject("name", user.getUserName());
		return mv;
	}
	
	@RequestMapping("/goback")
	public ModelAndView finish(){
		ModelAndView mv=new ModelAndView("Home");
		mv.addObject("name", user.getUserName());
		return mv;
	}

	}

