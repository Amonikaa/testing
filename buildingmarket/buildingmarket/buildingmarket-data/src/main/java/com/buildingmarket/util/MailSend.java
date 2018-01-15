package com.buildingmarket.util;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 * @author Amit, mail send content and properties.
 */
public class MailSend {
	public static boolean commonMailSend(String toMailId, String subject, String msg) {
		try {
			Message message = new MimeMessage(SendMailProperty.mailProperty());
			message.setFrom(new InternetAddress(IConstant.FROM_EMAIL_ID));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toMailId));
			message.setSubject(subject);
			message.setContent(msg, IConstant.TEXT_HTML);
			Transport.send(message);

		} catch (MessagingException messagingException) {

			messagingException.printStackTrace();
			return false;
		}
		return true;
	}
}
