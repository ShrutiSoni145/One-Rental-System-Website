package com.project.bean;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Sendemail {

	public boolean sendEmail(UserBean user) {
		System.out.println("=========================");
		boolean test= false;
		String toEmail= user .getEmail();
		final String fromEmail = "vishvajeetvaidya@gmail.com";
		final String password=  "0805Ce131121";
		 String host = "smtp.gmail.com";

	      Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", host);
	      props.put("mail.smtp.port", "587");
	      

	      // Get the Session object.
	      Session session = Session.getInstance(props,
	      new javax.mail.Authenticator() {
	         protected PasswordAuthentication getPasswordAuthentication() {
	            return new PasswordAuthentication(fromEmail, password);
	         }
	      });

	      try {
	          // Create a default MimeMessage object.
	          Message message = new MimeMessage(session);

	          // Set From: header field of the header.
	          message.setFrom(new InternetAddress(fromEmail));

	          // Set To: header field of the header.
	          message.setRecipients(Message.RecipientType.TO,
	          InternetAddress.parse(toEmail));

	          // Set Subject: header field
	          message.setSubject("Registration Completed");

	          // Now set the actual message
	          message.setText("Dear Customer,\r\n"
	          		+ "\r\n"
	          		+ "Thank you for the registration on Things On Rent.\r\n"
	          		+ "\r\n"
	          		+ "Please take a moment to verify your email address by clicking the link below:\r\n"
	          		+ "\r\n"
	          		+ "https://ThingsOnRent.com/Editor/Account/ConfirmEmail?token=95bf8877a1b947b4808bfc8e349217ab\r\n"
	          		+ "\r\n"
	          		+ "If you have any questions, please contact us at support.\r\n"
	          		+ "\r\n"
	          		+ "Thank you,\r\n"
	          		+ "Things On Rent Team "
	           );

	          // Send message
	          Transport.send(message);

	          System.out.println("Sent message successfully....");
	          test = true;

	       } catch (MessagingException e) {
	             throw new RuntimeException(e);
	       }
		
		
		
		return test;
	}

}