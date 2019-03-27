package com.sincrono.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
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
import com.sincrono.model.StoricoGiocate;
import com.sincrono.model.StoricoGiocateService;

@Controller
@Transactional
public class ControllerAdmin {
	@Autowired
	AdminService nn;
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

	@RequestMapping(path="/gestioneadmin",method=RequestMethod.POST)
	public String getIndex(@ModelAttribute("tenebre") Admin tenebre,@ModelAttribute("csmdelete") Customer csmdelete,Model m,Model s,HttpSession sessionadmin) {
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
		model.addAttribute("tenebre",new Admin());
	    return "loginadmin";
	}
	@Transactional
	@RequestMapping(value="cancellacsm")
	public String deletecustomer(@ModelAttribute("csmdelete") Customer csmdelete,Model s,HttpSession sessionprova) { 
		String a=csmdelete.getEmail();
		Customer c= as.findByemail(a);
		int id=c.getCustomer_id();
		as.deleteByemail(a);
		String msg="prova";
		s.addAttribute("cus", msg);	
		sessionprova.setAttribute("id",id);
		return "gestioneadmin";
	}
	@Transactional
	@RequestMapping(value="prova")
	public String prova(@RequestParam("customer_id") int id,@ModelAttribute("csmdelete") Customer csmdelete,HttpSession sessionprova,Model s ) {
		
		s.addAttribute("customer_id", id);	
		gcs.deleteBycid(id);
		gbs.deleteBybid(id);
		ghs.deleteByhid(id);
		sgs.deleteBysgid(id);
		return "gestioneadmin";
		}
	@RequestMapping(value="homepage")
	public String ritornahomepage(){
		return "index";
	}
	
	@RequestMapping(value="visualizza", method=RequestMethod.GET)
	public String getList(@ModelAttribute("csmdelete") Customer csmdelete, Model m) {
	List <Customer> listautenti=as.findAll();
	m.addAttribute("lista",listautenti);
	return "gestioneadmin";
}
	
	@RequestMapping(value="statistiche", method=RequestMethod.GET)
	public String getSaldo(Model model1) {
		DateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		Date date=new Date();
		Date da=new Date();
		Date gioco=new Date();
		String das="2019-03-21";
		Calendar c=Calendar.getInstance();
		int i=c.get(Calendar.DAY_OF_WEEK)-c.getFirstDayOfWeek();
		c.add(Calendar.DATE,-1);
		date=c.getTime();
		String a=sdf.format(date);
		try {
			date=sdf.parse(a);
		} catch (ParseException e) {
			
			e.printStackTrace();
		}
		 java.sql.Date sql = new java.sql.Date(date.getTime());
		double saldo=0;
		double saldolw=0;
		int giocate=0;
		int giocateld=0;
		int last=as.getLast();
		 
		List <StoricoGiocate>listagiocata=sgs.findAll();
		giocate=listagiocata.size();
		for(int j=0;j<listagiocata.size();j++) {
			 saldo=saldo+listagiocata.get(j).getSaldo();
			 Date d=(listagiocata.get(j).getData());
			 if(d!=null) {
			 das=sdf.format(d);
			 }
			 try {
					gioco=sdf.parse(das);
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			 java.sql.Date sql2 = new java.sql.Date(gioco.getTime());
			 if(sql2.after(sql)) {
				 saldolw=saldolw+listagiocata.get(j).getSaldo();
				 giocateld=giocateld+1;
				 
				 
			 }
			
		}
		
		model1.addAttribute("saldo",-saldo);
		model1.addAttribute("saldold",-saldolw);
		model1.addAttribute("giocatetot",giocate);
		model1.addAttribute("giocateld",giocateld);
	return "statistiche";
	}
	

	@RequestMapping(value="back")
	public String back(@ModelAttribute("csmdelete") Customer csmdelete) {
		
		return "gestioneadmin";
	}
	
	
}


