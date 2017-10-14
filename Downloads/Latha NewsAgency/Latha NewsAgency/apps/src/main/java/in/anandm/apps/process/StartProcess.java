package in.anandm.apps.process;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import in.anandm.apps.event.*;

// Referenced classes of package org.springframework.samples.mvc.process:
//            Processor

public class StartProcess
{

    public void start(Event e)
        throws Exception
    {
       System.out.println("Inside StartProcess .. ");
    	ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
       try{
        processor = (Processor)context.getBean("processor");
        processor.sendEmail(e);
        
    }finally{
        ((AbstractApplicationContext)context).close();
        }
      
    }

    public void setProcessor(Processor processor)
    {
        this.processor = processor;
    }

    private Processor processor;
}
