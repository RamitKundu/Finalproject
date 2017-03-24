package com.niit.MedicartFrontEnd.DaoImpl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.MedicartFrontEnd.Dao.UserDao;
import com.niit.MedicartFrontEnd.Model.User;


@Repository
@Transactional
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	public void add(User user) {
		
		sessionFactory.getCurrentSession().save(user);
	}

	public User getByEmail(String email) {
		
		return sessionFactory.getCurrentSession().get(User.class, email);
	}

	public boolean validate(String email, String password) {
		String hql="from User where email='"+email+"' and password='"+password+"'";
		if( sessionFactory.getCurrentSession().createQuery(hql).uniqueResult()==null){
		return false;
	}
		else{
			return true;
		}

}
}
