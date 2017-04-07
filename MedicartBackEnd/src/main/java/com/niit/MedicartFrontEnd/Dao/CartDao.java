package com.niit.MedicartFrontEnd.Dao;

import java.util.List;

import com.niit.MedicartFrontEnd.Model.Cart;

public interface CartDao {
	
	//public List<Cart> getall();
	public void add(Cart cart);
	public void delete(Cart cart);
	public Cart getByCartId(int cartId);
	public boolean isForValidSameProduct(String email,int productId);
	public double getGrandTotal(String email);
	public List<Cart> getCartbyUser(String email);

}
