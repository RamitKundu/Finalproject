package com.niit.MedicartFrontEnd.Dao;

import com.niit.MedicartFrontEnd.Model.ShippingAddress;

public interface ShippingDao {
public void add(ShippingAddress ship);
public ShippingAddress getById(int shippingId);
}
