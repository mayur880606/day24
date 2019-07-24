package com.app.controller;

import java.util.List;
import com.app.pojos.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.service.IBookService;
import com.app.service.ICustomerService;

@Controller
@RequestMapping("/admin")
public class AdminHome {

	@Autowired
	private ICustomerService customerService;
	
	@Autowired
	private IBookService bookService;
	
	@RequestMapping
	public  String adminPage() {
		return "/adminwork";
	}
	
	@RequestMapping("/bookInventory") 
	public String bookInventory(Model model) {
		
		List<Book> books = bookService.getBookList();
		model.addAttribute("books", books);
		
		return "admin/BookList";
	}
	
	@RequestMapping("/customer")
	public String customerManagement(Model model) {
		
		List<Customer> customerList = customerService.getAllCustomers();
		model.addAttribute("customerList", customerList);
		
		return "customerManagement";
	}
}














