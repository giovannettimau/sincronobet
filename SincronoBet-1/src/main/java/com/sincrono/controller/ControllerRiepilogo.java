package com.sincrono.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;

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
import com.sincrono.model.Hockey;
import com.sincrono.model.HockeyService;
import com.sincrono.model.Riepilogo;
import com.sincrono.model.Schedina;
@Controller
public class ControllerRiepilogo {
	double quotatotale=1;
	@Autowired
	CalcioService gc;
	@Autowired
	BasketService gb;
	@Autowired
	HockeyService gh;
	
	@RequestMapping(value="risultati",method = RequestMethod.GET)
	public String loginRoot(ModelMap model,Model pol,HttpSession risultati,HttpSession risultatip)
	
	{
		ArrayList<Schedina> nuova=new ArrayList();
		ArrayList<Riepilogo> riepi=new ArrayList();
		nuova=(ArrayList<Schedina>) risultatip.getAttribute("gioc");
//		System.out.println(nuova.get(0).getRisultato());
		quotatotale=1;
		for(int j=0;j<nuova.size();j++) {
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
		return "risultati";
	}

	
	@RequestMapping(value="rimuovi",method = RequestMethod.POST)
	public String rimuovigiocata(@RequestParam("indice") int indice,ModelMap model,HttpSession risultati) {
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
		System.out.println(decremento);
		nuova.remove(indice);
		
		for(int j=0;j<rimuovi.size();j++) {
			rimuovi.get(j).setId(j);
			nuova.get(j).setCount(j);
			
		}
		
		risultati.setAttribute("risultati",rimuovi);
		risultati.setAttribute("gioc",nuova);
		model.addAttribute("quota", quotatotale);
		
		
		
		System.out.println(indice);
		return "risultati";
	
	}
	
	@RequestMapping(value="simula")
	public String getpossvincita(@RequestParam("puntata") double puntata,@RequestParam("quota") double quota,ModelMap mg, ModelMap pv ) {
		DecimalFormat format=new DecimalFormat("0.##");
		
		String possvinc;
		possvinc=format.format(quota*puntata);
		Double.parseDouble(possvinc); 
		mg.addAttribute("quota",quota);
		pv.addAttribute("possvinc",possvinc);
		
		return "risultati";
	}
	
}
