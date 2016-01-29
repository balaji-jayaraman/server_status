package com.Datastore;

import java.io.IOException;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;

public class MailSend {
	public void send(String product,String Date,String BeginTime,String EndTime,String Title,String description) throws IOException
	{
		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);
		VelocityEngine ve=new VelocityEngine();
		ve.init();
		
		Agent a=new Agent();
		List<UserDetails> list=(List<UserDetails>)a.retrieve_user(); 
		for(UserDetails s1:list)
		{
			try {
				Message msg = new MimeMessage(session);

		        Multipart mp = new MimeMultipart();

		        MimeBodyPart htmlPart = new MimeBodyPart();
				msg.setFrom(new InternetAddress("issue@server-status-500.appspotmail.com", "full server issue"));
				msg.addRecipient(Message.RecipientType.TO,
						new InternetAddress(s1.getClients(), "Mr. User"));
				msg.setSubject(Title);
				VelocityContext context = new VelocityContext();
		        context.put("productName",product);
		        context.put("date",Date);
		        context.put("beginTime",BeginTime);
		        context.put("endTime",EndTime);
		        context.put("title",Title);
		        context.put("description",description);
		        Template tem=ve.getTemplate("velocityhtml.vm");
		        StringWriter write=new StringWriter();
		        tem.merge(context, write);
		        System.out.println(write.toString());
		        htmlPart.setContent(write.toString(), "text/html");
		        mp.addBodyPart(htmlPart);
		        msg.setContent(mp);
		        Transport.send(msg);

				} catch (AddressException e) {
					e.printStackTrace();
				} catch (MessagingException e) {
					e.printStackTrace();
				}
		}
	}

}
