package com.wear.kapampangan.project.util;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SMTPUtil {

	final String username = "wearkapampanganoffcial";
	final String password = "rafaelmanuel0000";

	public void sendMail(String sendTo , String messageContent , String subject){
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
	
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
	
		try {
	
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress("wearkapampanganoffcial@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(sendTo));
			message.setSubject(subject);
			message.setText(messageContent , "utf-8" , "html");
	
			Transport.send(message);
	
			System.out.println("Success");
	
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}

}
