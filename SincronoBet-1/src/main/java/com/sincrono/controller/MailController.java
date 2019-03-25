package com.sincrono.controller;

import java.io.IOException;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sincrono.model.Customer;
import com.sincrono.model.CustomerService;
import com.sincrono.model.MailService;


@RestController
public class MailController {

	@Autowired
	private MailService notificationService;
	

	@Autowired
	CustomerService as;
	
	@RequestMapping(value="reset", method = RequestMethod.POST )
	public String send(@ModelAttribute("personForm") Customer g, @RequestParam("newmail") String newmail, HttpSession msgsession, HttpServletResponse response) {
	
		
		
		/*
		 *Creazione Utente che riceve la mail grazie alla classe User instanziata precedentemente
		 */
		
		Customer c=as.findByemail(newmail);
		
		if(c==null) {
			
			return "Inserisci una mail valida";
		
		}
		
		int count=7;
		String alphanumeric= "abcdefghilmnopqrstuvz0123456789";
		StringBuilder builder = new StringBuilder();
		while(count-- !=0) {
			
			int character=(int)(Math.random()*alphanumeric.length());
			builder.append(alphanumeric.charAt(character));
			
		}
		String password=builder.toString();
		c.setPassword(password);
		as.save(c);

		
		/*
		 * Chiamata del metodo sendEmail per l'invio della mail all'user dichiarato sopra
		 */

		try {
			notificationService.sendEmail(c, password);
		} catch (MailException mailException) {
			System.out.println(mailException);
		}
		
						
		
	
		return "Hai ricevuto una mail con la nuova password";
	}

}
