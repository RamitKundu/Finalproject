package com.niit.MedicartFrontEnd.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.MedicartFrontEnd.Dao.ContactDao;
import com.niit.MedicartFrontEnd.Model.Contact;



@Transactional
@Repository
public class ContactDaoImpl implements ContactDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void add(Contact contact) {
		
		sessionFactory.getCurrentSession().save(contact);
		
		
	}
	

}
