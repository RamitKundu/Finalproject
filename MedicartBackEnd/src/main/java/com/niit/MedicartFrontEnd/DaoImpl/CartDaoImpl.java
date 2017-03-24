package com.niit.MedicartFrontEnd.DaoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.MedicartFrontEnd.Dao.CartDao;
import com.niit.MedicartFrontEnd.Model.Cart;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	//public List<Cart> getall() {
		//return sessionFactory.getCurrentSession().createQuery("from Cart").list();
	///}

	public void add(Cart cart) {
		cart.setTotalPrice(cart.getProductPrice()*cart.getProductQuantity());
		sessionFactory.getCurrentSession().save(cart);
		
	}

	public void delete(Cart cart) {
		sessionFactory.getCurrentSession().delete(cart);
		
	}

	public Cart getByCartId(int cartId) {
		return sessionFactory.getCurrentSession().get(Cart.class,cartId);
	}

	public boolean isForValidSameProduct(String email, int productId) {
		List<Cart> obj=sessionFactory.getCurrentSession().createQuery("from Cart where email='"+email+"' and productId='"+productId+"'").list();
		int i=0;
		for(Cart cart:obj){
			if(cart.getProductId()==productId){
				i++;
			}
		}
			if(i==0){
				
				return false;
			}
			else{
				return true;
			}
		
	}
	
	public List<Cart> getCartbyUser(String email){
		
		List<Cart> obj=sessionFactory.getCurrentSession().createQuery("from Cart where email='"+email+"'").list();
		return obj;
	 
	}
	
	}
