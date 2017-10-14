
package in.anandm.apps.email;

import java.util.Properties;

import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import in.anandm.apps.domain.EmailBean;
import in.anandm.apps.domain.UserData;


public class EmailProcessor
{


	public static Boolean sendMail(EmailBean bean, UserData e)
			throws Exception
	{
		try
		{
			System.out.println("I am in email send");
			String host = "smtp.gmail.com";
			Properties props = System.getProperties();
			props.put("mail.smtp.starttls.enable", Boolean.valueOf(true));
			props.setProperty("mail.smtp.ssl.trust", host);
			props.put("mail.smtp.auth", Boolean.valueOf(true));
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.user", bean.getFrom());
			props.put("mail.smtp.password", bean.getPassword());
			props.put("mail.smtp.port", "587");
			Session session = Session.getDefaultInstance(props, null);
			MimeBodyPart messageBodyPart = new MimeBodyPart();
			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(bean.getFrom(), "MRRB Tool"));
			message.setSubject(bean.getSubject());
			Multipart multipart = new MimeMultipart();
			InternetAddress toAddress = new InternetAddress(bean.getTo());
			message.addRecipient(javax.mail.Message.RecipientType.TO, toAddress);
			//messageBodyPart.setContent(bean.getBody(), "text/html;charset=UTF-8");
			//multipart.addBodyPart(messageBodyPart);
			String msg = "";
			if(e.getIsRegEmail().equalsIgnoreCase("Y")){
				msg+= "Hi "+e.getFirstName()+",</br></br>Welcome to Latha's Agency "+e.getRegNum();
			}else{
				msg+= "Hi User,</br></br>A New Replication Ticket "+e.getRegNum()+" has been assigned to you";
			}

			msg+="</br>";
			msg+="</br>";
			msg+="Please click below link to confim registration</br>";
			msg+="</br>";
			msg+="<a href=\""+e.getUrl()+">Confirm Email "+"</a></br>";	

			String msgbody = (msg);
			toAddress = new InternetAddress("chinthala.sudheer@gmail.com");

			message.addRecipient(javax.mail.Message.RecipientType.TO, toAddress);
			messageBodyPart.setContent((new StringBuilder("<h4>")).append(msgbody).append("</h1>").toString(), "text/html;charset=UTF-8");
			/*messageBodyPart = new MimeBodyPart();
			javax.activation.DataSource source = new FileDataSource(bean.getFilename());
			messageBodyPart.setDataHandler(new DataHandler(source));
			messageBodyPart.setFileName(bean.getFilename());*/
			multipart.addBodyPart(messageBodyPart);

			message.setContent(multipart);
			Transport transport = session.getTransport("smtp");
			transport.connect(host, bean.getFrom(), bean.getPassword());
			transport.sendMessage(message, message.getAllRecipients());
			transport.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println((new StringBuilder("Exception in sending Email ")).append(ex).toString());
		}
		return Boolean.valueOf(true);
	}
}
