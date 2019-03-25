package com.sincrono.model;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.sincrono.model.Customer;

/*
 * Gestione della logica di business tramite oggetti di tipo Service
 * @Service funzione di elaborazione dati e che vengono forniti al Controller per essere esposti verso il client
 */

@Service
public class MailService {

	/*
	 * JavaMailSender estende l'interfaccia MailSender che contiente la funione send()
	 * E' richiesto l'oggetto SimpleMailMessage che il metodo send() userà un oggetto di tipo SimpleMailMessage come parametro
	 */
	
	private JavaMailSender javaMailSender;

	
	@Autowired
	public MailService(JavaMailSender javaMailSender) {
		this.javaMailSender = javaMailSender;
	}

	

	public void sendEmail(Customer customer, String pass) throws MailException {


		SimpleMailMessage mail = new SimpleMailMessage();
		mail.setTo(customer.getEmail());
		mail.setFrom("lukepetersaint@gmail.com");
		mail.setSubject("New password");
		mail.setText(pass);

		
		javaMailSender.send(mail);
	}
	
}