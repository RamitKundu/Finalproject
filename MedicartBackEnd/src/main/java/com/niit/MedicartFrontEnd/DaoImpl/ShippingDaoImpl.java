package com.niit.MedicartFrontEnd.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.MedicartFrontEnd.Dao.ShippingDao;
import com.niit.MedicartFrontEnd.Model.ShippingAddress;

@Repository
@Transactional
public class ShippingDaoImpl implements ShippingDao{
	
@Autowired
private SessionFactory sessionFactory;

	public void add(ShippingAddress ship) {
		
		sessionFactory.getCurrentSession().save(ship);
	}

	public ShippingAddress getById(int shippingId) {
		
		return sessionFactory.getCurrentSession().get(ShippingAddress.class, shippingId);
	}

}
