package in.anandm.apps.event;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import in.anandm.apps.domain.UserData;

public class MasterEvent {
 
    public void publishevent(UserData emp){   
  
    ApplicationContext context = new ClassPathXmlApplicationContext(
                "applicationContext.xml");
        try {
        	
            EventManager loginManager = (EventManager) context
                    .getBean("loginManager");
            Boolean isEventSuccess = loginManager.publishevent(emp);
            if (!isEventSuccess) {
                throw new RuntimeException("System was not able to send Event in backend");
            }
            
        } finally {
            ((AbstractApplicationContext) context).close();
        }
    }
    
}
