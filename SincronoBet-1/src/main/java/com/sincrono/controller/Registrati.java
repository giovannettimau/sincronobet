//package com.sincrono.controller;
//
//import javax.servlet.http.HttpSession;
//
//import org.hibernate.Session;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.sincrono.model.Customer;
//import com.sincrono.model.CustomerService;
//@Controller
//public class Registrati {
//	@Autowired
//	CustomerService as;
//	
//
//	@RequestMapping("registrati")
//	public String getRegistrati(@ModelAttribute Customer personForm2,Model z) {
//		z.addAttribute("personForm2", personForm2);
//		return "registrati";
//	}
//	@RequestMapping(path="registrati/provace")
//	public String getregistradati(@ModelAttribute Customer personForm2,Model m,Model v,HttpSession session,Model da) {
//		m.addAttribute("personForm2", personForm2);
//		String msg="prova";
//		String nome=personForm2.getNome();
//		String cognome=personForm2.getCognome();
//		String email=personForm2.getEmail();
//		String pass=personForm2.getPassword();
//		
//		Customer c= as.findByemail(email);
//		if(c!=null) {
//			msg="utente già registrato fai il login";
//			v.addAttribute("cusa", msg);
//			return "redirect:registrati";	
//		}
//		else {
//			Customer nuovo=new Customer();
//			nuovo.setNome(nome);
//			nuovo.setCognome(cognome);
//			nuovo.setEmail(email);
//			nuovo.setPassword(pass);
//			da.addAttribute(nuovo);
//			//session.setAttribute(new Customer(nome,cognome,email,pass));
////			Session session = sessionFactory.openSession();//apre una sessione
////			session.beginTransaction();//simile ad execute update		
//		}
//		v.addAttribute("cusa", msg);
//		return "redirect:registrati";
//			
//}
//
//}
