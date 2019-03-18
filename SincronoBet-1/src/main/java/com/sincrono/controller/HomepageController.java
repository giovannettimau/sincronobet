package com.sincrono.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sincrono.model.Basket;
import com.sincrono.model.BasketService;
import com.sincrono.model.Calcio;
import com.sincrono.model.CalcioService;
import com.sincrono.model.Customer;
import com.sincrono.model.CustomerService;
import com.sincrono.model.Hockey;
import com.sincrono.model.HockeyService;
import com.sincrono.model.Schedina;
@Controller
public class HomepageController {
	double quota=1;
//	Schedina uno=new Schedina();
	ArrayList<Schedina> gioc=new ArrayList();
	int i=0;
	
	
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
	public String getBasket(Model m,HttpSession sessionprova) {
		Customer giocatore=(Customer)sessionprova.getAttribute("giocatore");
	List<Basket> b=bs.findAll();
	m.addAttribute("attB", b);
	
	return "basket";
	}
	
	@RequestMapping(value = "/hockey", method = RequestMethod.GET)
	public String getHockey(Model m,HttpSession sessionprova) {
		Customer giocatore=(Customer)sessionprova.getAttribute("giocatore");
	List<Hockey> c=hs.findAll();
	m.addAttribute("attH", c);
	
	return "hockey";
	}
	@RequestMapping(value = "/scalcio1", method = RequestMethod.GET)
	public String getid(@RequestParam("prova1") double calcioid,@RequestParam("prova1id") int prova,Model m,HttpSession sessiongiocata,Model z) {
		List<Calcio> a=fs.findAll();		 
		Schedina uno=new Schedina();
		quota=quota*calcioid;
		 uno.setRisultato("1");
		 uno.setId(prova);
		 uno.setQuota(calcioid);
		 uno.setTiposport("calcio");
		 uno.setCount(gioc.size());
		 i=gioc.size();
		 gioc.add(i,uno);
		 sessiongiocata.setAttribute("gioc",gioc);
		 m.addAttribute("att", a);
	return "calcio";
}
	@RequestMapping(value = "/scalcio2", method = RequestMethod.GET)
	public String getid2(@RequestParam("prova2") double calcioid,@RequestParam("prova2id") int prova,Model m,HttpSession sessiongiocata,Model z) {
		quota=quota*calcioid;
		Schedina uno=new Schedina(); 
		uno.setRisultato("2");
		 uno.setId(prova);
		 uno.setQuota(calcioid);
		 uno.setTiposport("calcio");
		 uno.setCount(gioc.size());
		 i=gioc.size();
		 gioc.add(i,uno);
		 sessiongiocata.setAttribute("gioc",gioc);
		List<Calcio> a=fs.findAll();
		m.addAttribute("att", a);
	return "calcio";
}
	@RequestMapping(value = "/scalciox", method = RequestMethod.GET)
	public String getidx(@RequestParam("provax") double calcioid,@RequestParam("provaxid") int prova,Model m,HttpSession sessiongiocata,Model z) {
		Schedina uno=new Schedina();
		quota=quota*calcioid;
		 uno.setRisultato("x");
		 uno.setId(prova);
		 uno.setQuota(calcioid);
		 uno.setTiposport("calcio");
		 uno.setCount(gioc.size());
		 i=gioc.size();
		 gioc.add(i,uno);
	 sessiongiocata.setAttribute("gioc",gioc);
		List<Calcio> a=fs.findAll();
		m.addAttribute("att", a);
	return "calcio";
}
	@RequestMapping(value = "/sbasket2", method = RequestMethod.GET)
	public String getid2b(@RequestParam("prova2") double basketid,@RequestParam("prova2id") int prova,Model m,HttpSession sessiongiocata,Model z) {
		quota=quota*basketid;
		Schedina uno=new Schedina(); 
		uno.setRisultato("2");
		 uno.setId(prova);
		 uno.setQuota(basketid);
		 uno.setTiposport("basket");
		 uno.setCount(gioc.size());
		 i=gioc.size();
		 gioc.add(i,uno);
		 sessiongiocata.setAttribute("gioc",gioc);
		List<Basket> a=bs.findAll();
		m.addAttribute("attB", a);
	return "basket";
}
	@RequestMapping(value = "/sbasket1", method = RequestMethod.GET)
	public String getid1b(@RequestParam("prova1") double basketid,@RequestParam("prova1id") int prova,Model m,HttpSession sessiongiocata,Model z) {
		quota=quota*basketid;
		Schedina uno=new Schedina(); 
		uno.setRisultato("1");
		 uno.setId(prova);
		 uno.setQuota(basketid);
		 uno.setTiposport("basket");
		 uno.setCount(gioc.size());
		 i=gioc.size();
		 gioc.add(i,uno);
		 sessiongiocata.setAttribute("gioc",gioc);
		List<Basket> a=bs.findAll();
		m.addAttribute("attB", a);
	return "basket";
}
	@RequestMapping(value = "/shockey2", method = RequestMethod.GET)
	public String getid2h(@RequestParam("prova2") double basketid,@RequestParam("prova2id") int prova,Model m,HttpSession sessiongiocata,Model z) {
		quota=quota*basketid;
		Schedina uno=new Schedina(); 
		uno.setRisultato("2");
		 uno.setId(prova);
		 uno.setQuota(basketid);
		 uno.setTiposport("hockey");
		 uno.setCount(gioc.size());
		 i=gioc.size();
		 gioc.add(i,uno);
		 sessiongiocata.setAttribute("gioc",gioc);
		List<Hockey> a=hs.findAll();
		m.addAttribute("attH", a);
	return "hockey";
}
	@RequestMapping(value = "/shockey1", method = RequestMethod.GET)
	public String getid1h(@RequestParam("prova1") double basketid,@RequestParam("prova1id") int prova,Model m,HttpSession sessiongiocata,Model z) {
		quota=quota*basketid;
		Schedina uno=new Schedina(); 
		uno.setRisultato("1");
		 uno.setId(prova);
		 uno.setQuota(basketid);
		 uno.setTiposport("hockey");
		 uno.setCount(gioc.size());
		 i=gioc.size();
		 gioc.add(i,uno);
		 sessiongiocata.setAttribute("gioc",gioc);
		List<Hockey> a=hs.findAll();
		m.addAttribute("attH", a);
	return "hockey";
}
}
