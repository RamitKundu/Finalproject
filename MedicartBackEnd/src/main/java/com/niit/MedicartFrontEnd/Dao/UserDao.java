package com.niit.MedicartFrontEnd.Dao;

import com.niit.MedicartFrontEnd.Model.User;

public interface UserDao {
	
	public void add(User user);
	
	public  User getByEmail(String email);
	
	public boolean validate(String email,String password);
	

}
