package com.sincrono.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sincrono.model.Basket;
import com.sincrono.model.BasketService;
import com.sincrono.model.Calcio;
import com.sincrono.model.CalcioService;
import com.sincrono.model.Customer;
import com.sincrono.model.CustomerService;
import com.sincrono.model.Dettagli;
import com.sincrono.model.GiocataBasket;
import com.sincrono.model.GiocataBasketService;
import com.sincrono.model.GiocataCalcio;
import com.sincrono.model.GiocataCalcioService;
import com.sincrono.model.GiocataHockey;
import com.sincrono.model.GiocateHockeyService;
import com.sincrono.model.Hockey;
import com.sincrono.model.HockeyService;
import com.sincrono.model.Riepilogo;
import com.sincrono.model.Schedina;
import com.sincrono.model.StoricoGiocate;
import com.sincrono.model.StoricoGiocateService;

@Controller
public class ControllerGiocatore {
	
	@Autowired
	CustomerService cs;
	@Autowired
	StoricoGiocateService sgs;
	@Autowired
	GiocataCalcioService gcs;
	@Autowired
	GiocataBasketService gbs;
	@Autowired
	GiocateHockeyService ghs;
	@Autowired
	CalcioService cas;
	@Autowired
	BasketService bs;
	@Autowired
	HockeyService hs;
	
	@RequestMapping(value="profilo")
	public String storicoRoot(ModelMap model,Model pol,HttpSession risultati,ModelMap ses)
	
	{
		Customer profilo=new Customer();
		ArrayList<StoricoGiocate> utente=new ArrayList();
		ArrayList<GiocataCalcio> calcio=new ArrayList();
		ArrayList<GiocataBasket> basket=new ArrayList();
		ArrayList<GiocataHockey> hockey=new ArrayList();
		ArrayList<Riepilogo> storia=new ArrayList();
		profilo=(Customer) risultati.getAttribute("giocatore");
		int id=profilo.getCustomer_id();
		utente=sgs.findBysgid(id);
		double saldototale = 0;
		for(int j=0;j<utente.size();j++) {
			saldototale=saldototale+utente.get(j).getSaldo();
		}
		risultati.setAttribute("utente",utente);
		risultati.setAttribute("saldo",saldototale);
		
		return "profilo";
		
		
	}
	@RequestMapping(value="dettagli")
	public String dettagliRoot(@RequestParam("prova1") int idstorico,Model pol,HttpSession risultati,ModelMap ses) {
		ArrayList<Dettagli> dettagli=new ArrayList();
		ArrayList<GiocataCalcio> calcio=new ArrayList();
		ArrayList<GiocataBasket> basket=new ArrayList();
		ArrayList<GiocataHockey> hockey=new ArrayList();
		calcio=gcs.findBystoricogiocate(idstorico);
		basket=gbs.findBystoricogiocate(idstorico);
		hockey=ghs.findBystoricogiocate(idstorico);
		for(int j=0;j<calcio.size();j++) {
			Dettagli pass=new Dettagli();
			int calcid=calcio.get(j).getCalcid();
			Calcio u=new Calcio();
			u=cas.findByid(calcid);
			pass.setSquadraA(u.getSquadraA());
			pass.setSquadraB(u.getSquadraB());
			pass.setRisultatoGiocato(calcio.get(j).getRisultato());
			pass.setP1(u.getP1());
			pass.setP2(u.getP2());
			dettagli.add(pass);
		}
		for(int j=0;j<basket.size();j++) {
			Dettagli pass=new Dettagli();
			int baskid=basket.get(j).getBaskid();
			Basket u=new Basket();
			u=bs.findByid(baskid);
			pass.setSquadraA(u.getSquadraA());
			pass.setSquadraB(u.getSquadraB());
			pass.setRisultatoGiocato(basket.get(j).getRisultato());
			pass.setP1(u.getP1());
			pass.setP2(u.getP2());
			dettagli.add(pass);
		}
		for(int j=0;j<hockey.size();j++) {
			Dettagli pass=new Dettagli();
			int hockid=hockey.get(j).getHockeyid();
			Hockey u=new Hockey();
			u=hs.findByid(hockid);
			pass.setSquadraA(u.getSquadraA());
			pass.setSquadraB(u.getSquadraB());
			pass.setRisultatoGiocato(hockey.get(j).getRisultato());
			pass.setP1(u.getP1());
			pass.setP2(u.getP2());
			dettagli.add(pass);
		}
		risultati.setAttribute("prova",dettagli);
	
		return "redirect:profilo";
	}

	@RequestMapping(value="tornarisultati")
	public String tornarisultati() {
		
		return "risultati";
	}
	
	
}
