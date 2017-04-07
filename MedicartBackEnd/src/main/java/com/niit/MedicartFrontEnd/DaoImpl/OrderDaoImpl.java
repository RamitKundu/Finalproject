package com.niit.MedicartFrontEnd.DaoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.MedicartFrontEnd.Dao.OrderDao;
import com.niit.MedicartFrontEnd.Model.OrderDetails;


@Repository

@Transactional
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void add(OrderDetails order) {
		sessionFactory.getCurrentSession().save(order);
		
	}

	public OrderDetails getByEmail(String email) {
		
		return sessionFactory.getCurrentSession().get(OrderDetails.class, email);
	}

	public OrderDetails getByOrderId(int orderId) {
		
		return sessionFactory.getCurrentSession().get(OrderDetails.class, orderId);
	}

	public List<OrderDetails> getall() {
		
		return sessionFactory.getCurrentSession().createQuery("from OrderDetails").list();
	}

}
