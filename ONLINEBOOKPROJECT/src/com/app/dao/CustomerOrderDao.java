package com.app.dao;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.app.pojos.*;
@Repository
@Transactional
public class CustomerOrderDao implements ICustomerOrderDao {

	@Autowired
	private SessionFactory sf;
	
	@Override
	public void addCustomerOrder(CustomerOrder customerOrder) {
		
		sf.getCurrentSession().saveOrUpdate(customerOrder);

	}

	
}
