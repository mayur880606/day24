package com.app.dao;

import java.io.IOException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Cart;
import com.app.service.ICustomerOrderService;

@Repository
@Transactional
public class CartDao implements ICartDao {

	@Autowired
	private ICustomerOrderService customerOrderService;
	
	@Autowired
	private SessionFactory sf;
	
	@Override
	public Cart getCartById(int cartId) {
		
		return sf.getCurrentSession().get(Cart.class, cartId);
	}

	@Override
	public void update(Cart cart) {
		
		int cartId = cart.getCartId();
		int grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);
		sf.getCurrentSession().saveOrUpdate(cart);

	}

	@Override
	public Cart validate(int cartId) throws IOException {
		
		Cart cart = getCartById(cartId);
		
		if(cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId+"");
		}
		update(cart);
		return cart;
	}

}
