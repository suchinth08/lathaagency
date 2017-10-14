package in.anandm.apps.event;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import in.anandm.apps.process.StartProcess;
import in.anandm.apps.domain.Ticket;




public class EventListener implements ApplicationListener<Event> {
	private StartProcess startprocess;

	public void onApplicationEvent(Event event) {
		System.out.println("Received login event");
		//Ticket emp = event.getUser();
		System.out.println("Printing in Listen Event onApplicationEvent");
		//System.out.println(emp);   
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	    StartProcess startprocess = (StartProcess) context.getBean("startprocess");
		try {
			startprocess.start(event);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public StartProcess getStartprocess() {
		return startprocess;
	}

	public void setStartprocess(StartProcess startprocess) {
		this.startprocess = startprocess;
	}

}
