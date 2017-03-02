package com.niit.MedicartFrontEnd.Dao;

import java.util.List;

import com.niit.MedicartFrontEnd.Model.Product;

public interface ProductDao {
	
	public List<Product> getAll();
	public void add(Product product);
	public void delete(Product product);
	public void update(Product product);
	public Product getById(int id);
	public List<Product> getByCategory(String cat);

}
