package com.sincrono.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sincrono.model.Admin;
import com.sincrono.model.AdminService;
import com.sincrono.model.Customer;
import com.sincrono.model.CustomerService;
import com.sincrono.model.GiocataBasketService;
import com.sincrono.model.GiocataCalcioService;
import com.sincrono.model.GiocateHockeyService;
import com.sincrono.model.Hockey;
import com.sincrono.model.HockeyService;
import com.sincrono.model.StoricoGiocateService;

@Controller
@Transactional
public class ControllerAdmin {
	@Autowired
	AdminService nn;
	
	@Autowired
	HockeyService hs;
	
	@Autowired
	CustomerService as;
	@Autowired
	GiocataCalcioService gcs;
	@Autowired
	GiocataBasketService gbs;
	@Autowired
	GiocateHockeyService ghs;
	@Autowired
	StoricoGiocateService sgs;
	@RequestMapping(path="cancella",method = RequestMethod.GET)
	public String adminRoot(Model mo)
	{
		mo.addAttribute("csmdelete",new Customer());
	    return "gestioneadmin";
	}

	@RequestMapping(path="gestioneadmin",method=RequestMethod.POST)
	public String getIndex(@ModelAttribute("tenebre") Admin tenebre,@ModelAttribute("csmdelete") Customer csmdelete,Model s,HttpSession sessionadmin) {
		String a=tenebre.getEmail();
		String pass=tenebre.getPassword();
		String msg;
		
		Admin c= nn.findByemail(a);	
		if(c==null) {
			msg="Email errata";
			
			s.addAttribute("cus", msg);
			return "loginadmin";
		}		
		String p=c.getPassword();
		if(p.equals(pass)) {
			sessionadmin.setAttribute("admin",c);
			return "gestioneadmin";
		}
		else {
			msg="Password errata";
		}
		
		s.addAttribute("cus", msg);	
		return "loginadmin";		
}
	
	@RequestMapping(value="loginadmin",method = RequestMethod.GET)
	public String loginRoot(Model model)
	{
		model.addAttribute("tenebre", new Admin());
	    return "loginadmin";
	}
	
	@Transactional
	@RequestMapping(value="cancellacsm")
	public String deletecustomer(@ModelAttribute("csmdelete") Customer csmdelete,Model s) { 
		String a=csmdelete.getEmail();
		Customer c= as.findByemail(a);
		int id=c.getCustomer_id();
		as.deleteByemail(a);
		gcs.deleteBycid(id);
		gbs.deleteBybid(id);
		ghs.deleteByhid(id);
		sgs.deleteBysgid(id);
		return "gestioneadmin";
	}
	
	@Transactional
	@RequestMapping(value="cancellagsg")
	public String prova(@RequestParam("customer_id") int id, @ModelAttribute("csmdelete") Customer csmdelete, Model s ) {
		s.addAttribute("customer_id", id);
		gcs.deleteBycid(id);
		gbs.deleteBybid(id);
		ghs.deleteByhid(id);
		sgs.deleteBysgid(id);
		return "gestioneadmin";
		}
	
	
	@RequestMapping(value = "/visualizzaUT", method = RequestMethod.GET)
	public String getList(Model m) {
		List<Customer> lista=as.findAll();
		m.addAttribute("lista", lista);
		return "visualizzaUT"; 
	}
	
}

