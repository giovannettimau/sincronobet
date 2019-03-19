package com.sincrono.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sincrono.model.Admin;
import com.sincrono.model.Customer;
import com.sincrono.model.CustomerService;
@Controller
public class Login  {	
	@Autowired
	CustomerService as;
	@RequestMapping(path="act",method=RequestMethod.POST)
	public String getIndex(@ModelAttribute("personForm") Customer personForm,Model s,HttpSession session) {
		String a=personForm.getEmail();
		String pass=personForm.getPassword();
		String msg;
		Customer c= as.findByemail(a);
		if(c==null) {
			msg="Email errata";
			s.addAttribute("cus", msg);
			return "loginutente";
		}
		String p=c.getPassword();
		if(p.equals(pass)) {
			session.setAttribute("giocatore",c);
			return "index";	
		}
		else {
			msg="Password errata";
			s.addAttribute("cus", msg);
			return "loginutente";
		}
}
	@RequestMapping(value="/",method = RequestMethod.GET)
	public String loginRootu(Model model)
	{
		model.addAttribute("personForm",new Customer());
	    return "index";
	}
	@RequestMapping(path="registra",method=RequestMethod.POST)
	public String getregistradati(@ModelAttribute("personForm") Customer personForm,Model m,Model v,Model da) {
		Customer nuovo=new Customer();
		int last;
		String msg="prova";
		String nome=personForm.getNome();
		String cognome=personForm.getCognome();
		String email=personForm.getEmail();
		String pass=personForm.getPassword();
		
		Customer c= as.findByemail(email);
		if(c!=null) {
			msg="Utente già registrato: effettua il login";
			v.addAttribute("cus", msg);
			return "loginutente";	
		}
		else {
			last=as.getLast();
			nuovo.setCustomer_id(last+1);
			nuovo.setNome(nome);
			nuovo.setCognome(cognome);
			nuovo.setEmail(email);
			nuovo.setPassword(pass);
			as.save(nuovo);
	
		}
		v.addAttribute("cus", msg);
		return "loginutente";
			
}
	@RequestMapping(value="/loginutente",method = RequestMethod.GET)
	public String loginRootut(Model model)
	{
		model.addAttribute("personForm", new Customer());
	    return "loginutente";
	}
}