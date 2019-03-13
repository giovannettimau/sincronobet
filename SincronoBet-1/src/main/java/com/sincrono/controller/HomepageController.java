package com.sincrono.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sincrono.model.Basket;
import com.sincrono.model.BasketService;
import com.sincrono.model.Calcio;
import com.sincrono.model.CalcioService;
import com.sincrono.model.Customer;
import com.sincrono.model.CustomerService;
import com.sincrono.model.Hockey;
import com.sincrono.model.HockeyService;
@Controller
public class HomepageController {

	@Autowired
	CustomerService cs;
	
	@Autowired
	CalcioService fs;
	
	@Autowired
	BasketService bs;
	
	@Autowired
	HockeyService hs;

	@RequestMapping(value = "/calcio", method = RequestMethod.GET)
		public String getIndex(Model m,HttpSession sessionprova) {
		Customer giocatore=(Customer)sessionprova.getAttribute("giocatore");
		List<Calcio> a=fs.findAll();
		m.addAttribute("att", a);
		return "calcio";
	}
	
	@RequestMapping(value = "/basket", method = RequestMethod.GET)
	public String getBasket(Model m) {
	
	List<Basket> b=bs.findAll();
	m.addAttribute("attB", b);
	
	return "basket";
	}
	
	@RequestMapping(value = "/hockey", method = RequestMethod.GET)
	public String getHockey(Model m) {
	
	List<Hockey> c=hs.findAll();
	m.addAttribute("attH", c);
	
	return "hockey";
	}
}
