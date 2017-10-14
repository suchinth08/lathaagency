package in.anandm.apps.process;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import in.anandm.apps.process.SendEmail;

import in.anandm.apps.event.*;


public class ProcessorImpl implements Processor
{

	private SendEmail sendemail;
	
	public void setSendemail(SendEmail sendemail) {
		this.sendemail = sendemail;
	}


	public void sendEmail(Event event)
			throws Exception
	{
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		try{
			sendemail = (SendEmail)context.getBean("sendemail");
			sendemail.process(event);
		}finally{
			((AbstractApplicationContext)context).close();
		}

	}


}
