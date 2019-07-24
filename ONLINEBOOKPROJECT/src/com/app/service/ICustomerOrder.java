package com.app.service;

public interface ICustomerOrder {
	
	public void addCustomerOrder(CustomerOrderService customerOrder);
	
	public int getCustomerOrderGrandTotal(int cartId);
}
