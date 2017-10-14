package in.anandm.apps.event;

import org.springframework.context.ApplicationEvent;

import in.anandm.apps.domain.UserData;

public class Event extends ApplicationEvent {
    public Event(UserData t) {
        super(t);
    	System.out.println("Inside Event");
    }

   public UserData getUser() {
        return (UserData) getSource();
    }

    public static long getSerialversionuid() {
        return serialVersionUID;
    }

    private static final long serialVersionUID = -5594735946614874286L;

}
