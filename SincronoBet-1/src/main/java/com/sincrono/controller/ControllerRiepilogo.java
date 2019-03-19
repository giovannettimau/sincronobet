package com.sincrono.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sincrono.model.Admin;
import com.sincrono.model.Basket;
import com.sincrono.model.BasketService;
import com.sincrono.model.Calcio;
import com.sincrono.model.CalcioService;
import com.sincrono.model.Customer;
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
public class ControllerRiepilogo {
	double quotatotale=1;
	@Autowired
	CalcioService gc;
	@Autowired
	BasketService gb;
	@Autowired
	HockeyService gh;
	@Autowired
	StoricoGiocateService sgs;
	@Autowired
	GiocataCalcioService gcs;
	@Autowired
	GiocataBasketService gbs;
	@Autowired
	GiocateHockeyService ghs;
	
	@RequestMapping(value="risultati",method = RequestMethod.GET)
	public String loginRoot(ModelMap model,Model pol,HttpSession risultati,HttpSession risultatip,ModelMap ses)
	
	{
		ArrayList<Schedina> nuova=new ArrayList();
		ArrayList<Riepilogo> riepi=new ArrayList();
		nuova=(ArrayList<Schedina>) risultatip.getAttribute("gioc");
//		System.out.println(nuova.get(0).getRisultato());
		quotatotale=1;
		for(int j=0;j<nuova.size();j++) {
			System.out.println(nuova.get(j).getId());
//			System.out.println(nuova.get(j).getRisultato());
//			System.out.println(nuova.get(j).getQuota());
//			System.out.println(nuova.get(j).getTiposport());
			Riepilogo uno=new Riepilogo();
			int ids=nuova.get(j).getId();
			String sport=nuova.get(j).getTiposport();
			if(sport.equals("calcio")) {
			Calcio s=gc.findByid(ids);
			uno.setSquadraA(s.getSquadraA());
			uno.setSquadraB(s.getSquadraB());
			}
			else if(sport.equals("basket")) {
				Basket s=gb.findByid(ids);
				uno.setSquadraA(s.getSquadraA());
				uno.setSquadraB(s.getSquadraB());
			}
			else
			{
				Hockey s=gh.findByid(ids);
				uno.setSquadraA(s.getSquadraA());
				uno.setSquadraB(s.getSquadraB());
			}
			
			uno.setQuota(nuova.get(j).getQuota());
			uno.setRisultatoGiocato(nuova.get(j).getRisultato());
			uno.setId(riepi.size());
			quotatotale=nuova.get(j).getQuota()*quotatotale;
			riepi.add(uno);
			risultati.setAttribute("risultati",riepi);
			
		}
		
		model.addAttribute("quota",quotatotale);
		ses.addAttribute("quota2", quotatotale);
		return "risultati";
	}

	
	@RequestMapping(value="rimuovi",method = RequestMethod.GET)
	public String rimuovigiocata(@RequestParam("indice") int indice,ModelMap model,HttpSession risultati,ModelMap ses) {
		ArrayList<Riepilogo> rimuovi =new ArrayList();
		ArrayList<Schedina> nuova=new ArrayList();
		nuova=(ArrayList<Schedina>) risultati.getAttribute("gioc");
		 
		rimuovi=(ArrayList<Riepilogo>) risultati.getAttribute("risultati");
		double decremento=nuova.get(indice).getQuota();
//		try {
		rimuovi.remove(indice);
//		}
//		catch(IndexOutOfBoundsException e) {
//			return "risultati";
//		}
		quotatotale=quotatotale/decremento;
		nuova.remove(indice);
		
		for(int j=0;j<rimuovi.size();j++) {
			rimuovi.get(j).setId(j);
			nuova.get(j).setCount(j);
			
		}
		
		risultati.setAttribute("risultati",rimuovi);
		risultati.setAttribute("gioc",nuova);
		model.addAttribute("quota", quotatotale);
		ses.addAttribute("quota2", quotatotale);
		return "redirect:risultati";
	
	}
	
	@RequestMapping(value="simula")
	public String getpossvincita(@RequestParam("puntata") double puntata,@RequestParam("quota") double quota,ModelMap mg, ModelMap pv ) {
		DecimalFormat format=new DecimalFormat("0.##");
		
		String possvinc;
		possvinc=format.format(quota*puntata);
		try {
		Double.parseDouble(possvinc); }
		catch(NumberFormatException e ) {
			
		}
		
		mg.addAttribute("quota",quota);
		pv.addAttribute("possvinc",possvinc);
		return "risultati";
	}
	  @RequestMapping(value="logout", method = RequestMethod.GET)
      public String logout(HttpSession session) {
        session.invalidate();
        return "index";
      }
		@RequestMapping(value="gioca")
		public String getgiocata(@RequestParam("puntata") double puntata,ModelMap pv,ModelMap msg,ModelMap mg,HttpSession risultati) {
			 double quot=1;
			 boolean vittoria = true;
			 StoricoGiocate id=new StoricoGiocate();
			 Customer utenteloggato=new Customer();
			 utenteloggato=(Customer) risultati.getAttribute("giocatore");
			 int idgiocatore;
			 idgiocatore=utenteloggato.getCustomer_id();
			 int idgiocate;
			 idgiocate=sgs.getLast();
			 
			ArrayList<Schedina> nuova=new ArrayList();
			nuova=(ArrayList<Schedina>) risultati.getAttribute("gioc");
			for(int j=0;j<nuova.size();j++) {
				quot=quot*(nuova.get(j).getQuota());
				String sport=nuova.get(j).getTiposport();
				if(sport.equals("calcio")) {
					GiocataCalcio giocatacalcio=new GiocataCalcio();
					
					String risultato=nuova.get(j).getRisultato();
					Calcio s=gc.findByid(nuova.get(j).getId());
					
					if(!risultato.equals(s.getRisultato())) {
						vittoria=false;
					}
					giocatacalcio.setRisultato(risultato);
					giocatacalcio.setCid(idgiocatore);
					giocatacalcio.setStoricogiocate(idgiocate);
					giocatacalcio.setCalcid(nuova.get(j).getId());
					gcs.save(giocatacalcio);
				
				}
				else if (sport.equals("basket")) {
					GiocataBasket giocatabasket=new GiocataBasket();
					String risultato=nuova.get(j).getRisultato();
					Basket s=gb.findByid(nuova.get(j).getId());
					if(!risultato.equals(s.getRisultato())) {
						vittoria=false;
					}
					giocatabasket.setRisultato(risultato);
					giocatabasket.setBid(idgiocatore);
					giocatabasket.setStoricogiocate(idgiocate);
					giocatabasket.setBaskid(nuova.get(j).getId());
					gbs.save(giocatabasket);
				}
				else if(sport.equals("hockey")) {
					GiocataHockey giocatahockey=new GiocataHockey();
					String risultato=nuova.get(j).getRisultato();
					Hockey s=gh.findByid(nuova.get(j).getId());
					if(!risultato.equals(s.getRisultato())) {
						vittoria=false;
					}
					giocatahockey.setRisultato(risultato);
					giocatahockey.setHid(idgiocatore);
					giocatahockey.setStoricogiocate(idgiocate);
					giocatahockey.setHockeyid(nuova.get(j).getId());
					ghs.save(giocatahockey);
				}
			}
			if(vittoria) {
//			System.out.println("bravo");
			id.setPuntata(puntata);
			id.setVincita(puntata*quot);
			id.setSaldo(puntata*quot-puntata);
			id.setSgid(idgiocatore);
			id.setData(new Date());
			sgs.save(id);
			risultati.setAttribute("vincita",id.getSaldo());
			String msgio="COMPLIMENTI HAI VINTO!!!";
			msg.addAttribute("msg",msgio);
			}else {
//				System.out.println("hai perso lota");
				id.setPuntata(puntata);
				id.setVincita(0);
				id.setSaldo(-puntata);
				id.setSgid(idgiocatore);
				id.setData(new Date());
				sgs.save(id);
				risultati.setAttribute("vincita",id.getSaldo());
				String msgio="MI DISPIACE HAI PERSO, RITENTA!!!";
				msg.addAttribute("msg",msgio);
			
			}
			
			return "risultati";
		}
}
