package com.niit.MedicartFrontEnd.Dao;

import java.util.List;

import com.niit.MedicartFrontEnd.Model.OrderDetails;

public interface OrderDao {
	

	public void add(OrderDetails order);
	public OrderDetails getByEmail(String email);
	public OrderDetails getByOrderId(int orderId);
	public List<OrderDetails> getall();


}
