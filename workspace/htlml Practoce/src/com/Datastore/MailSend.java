package com.Datastore;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSend {
	public void send(String product,String Date,String BeginTime,String EndTime,String Title,String description) throws IOException
	{
		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);

		String msgBody ="Hi ,\n\n\tThere will be issue on "+product+"\n\n\t\tDate :"+Date+"\n\n\t\tBeginTime :"+BeginTime+"\n\n\t\tEndTime :"+EndTime+"\n\n\t\tDescription :"+description+"\n\n\n\n\nThanks & Regards,\nAdmin. ";
		Agent a=new Agent();
		List<UserDetails> list=(List<UserDetails>)a.retrieve_user(); 
		for(UserDetails s1:list)
		{
			try {
				Message msg = new MimeMessage(session);
				msg.setFrom(new InternetAddress("issue@server-status-500.appspotmail.com", "full server issue"));
				msg.addRecipient(Message.RecipientType.TO,
						new InternetAddress(s1.getClients(), "Mr. User"));
				msg.setSubject(Title);
				msg.setText(msgBody);
				Transport.send(msg);

				} catch (AddressException e) {
					e.printStackTrace();
				} catch (MessagingException e) {
					e.printStackTrace();
				}
		}
	}

}
