package com.niit.MedicartFrontEnd.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.MedicartFrontEnd.Dao.CartDao;
import com.niit.MedicartFrontEnd.Dao.ProductDao;
import com.niit.MedicartFrontEnd.Dao.UserDao;
import com.niit.MedicartFrontEnd.Model.Cart;
import com.niit.MedicartFrontEnd.Model.Product;
import com.niit.MedicartFrontEnd.Model.User;



@Controller
public class CartController {
	
	@Autowired
	CartDao cartDao;
	@Autowired
	UserDao userDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	HttpSession session;
	
	Product product;
	User user;
	
	
	
@RequestMapping(value="/myCart/{productid}",method=RequestMethod.POST)
	public ModelAndView cart(@PathVariable("productid")int id,@RequestParam("productQuantity")int quantity){
		if(session.getAttribute("registermsg")==null && session.getAttribute("usermsg")==null){
			ModelAndView mv=new ModelAndView("forward:/abc/" +id);
			Product obj=productDao.getById(id);
			mv.addObject("p", obj);
			mv.addObject("beforeadding", "Please LogIn before adding to cart....");
			return mv;
		}
		else{
			String email=session.getAttribute("useremail").toString();
			if(cartDao.isForValidSameProduct(email, id)==true){
				ModelAndView mv=new ModelAndView("forward:/abc/" +id);
				mv.addObject("cartmsg", "Products are already in the cart,Please continue to shop or checkout");
				return mv;
				
			}
			else{
				product=productDao.getById(id);
				 Cart cart=new Cart();
				 cart.setProductName(product.getProductName());
				 cart.setProductPrice(product.getProductPrice());
				 cart.setProductId(product.getId());
				 cart.setProductQuantity(quantity);
				 cart.setTotalPrice((product.getProductPrice())*(quantity));
				 cart.setEmail(email);
				 
				 cartDao.add(cart);
				 double sum=cartDao.getGrandTotal(email);
				
				 ModelAndView mv=new ModelAndView("forward:/cart");
				 mv.addObject("successcart", "Products added successfully to cart");
				 mv.addObject("grandtotal", sum);
				 return mv;
			
			}
			
		}
		
}

@RequestMapping("/cart")
	public ModelAndView showcart(){
		
		ModelAndView mv=new ModelAndView("Cart");
		String email= session.getAttribute("useremail").toString();
		List<Cart> obj=cartDao.getCartbyUser(email);
		double sum=cartDao.getGrandTotal(email);
		 mv.addObject("grandtotal", sum);
		mv.addObject("showallcart", obj);
		
		return mv;

	}

@RequestMapping("/deletes/{cartId}")
public ModelAndView deletecart(@PathVariable("cartId")int id){
	ModelAndView mv=new ModelAndView("forward:/cart");
	Cart cart=cartDao.getByCartId(id);
	cartDao.delete(cart);
	
	return mv;
}
	

}
