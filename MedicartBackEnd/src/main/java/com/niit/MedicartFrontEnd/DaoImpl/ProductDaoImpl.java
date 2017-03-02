package com.niit.MedicartFrontEnd.DaoImpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.MedicartFrontEnd.Dao.ProductDao;
import com.niit.MedicartFrontEnd.Model.Product;


@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	SessionFactory sessionFactory;

	public List<Product> getAll() {
		
		return sessionFactory.getCurrentSession().createQuery("from Product").list();
	}

	public void add(Product product) {
		sessionFactory.getCurrentSession().save(product);
		
	}

	public void delete(Product product) {
		sessionFactory.getCurrentSession().delete(product);
		
	}

	public void update(Product product) {
		sessionFactory.getCurrentSession().update(product);
		
	}

	public Product getById(int id) {
		
		return sessionFactory.getCurrentSession().get(Product.class, id);
	}

	public List<Product> getByCategory(String cat) {
		Query q=sessionFactory.getCurrentSession().createQuery("from Product where productCategory=?");
		q.setParameter(0, cat);
		
		return q.list();
	}

	
}
