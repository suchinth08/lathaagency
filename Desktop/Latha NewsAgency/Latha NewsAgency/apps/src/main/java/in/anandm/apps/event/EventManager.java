package in.anandm.apps.event;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

import in.anandm.apps.domain.UserData;

public class EventManager implements ApplicationContextAware {
   
    public Boolean publishevent(UserData e) {
        try {
            System.out.println("Publish successful login event for ...");
            System.out.println("Calling publishEvent");
            applicationContext.publishEvent(new Event(e));
            return true;
        } catch (Exception ex) {
            System.out.println("Internal Error while publishing Event, please conact System Adminstrator " + e);
            return null;
        }
    }

    public void setApplicationContext(ApplicationContext applicationContext)
            throws BeansException {
        this.applicationContext = applicationContext;
    }

    private ApplicationContext applicationContext;
}
