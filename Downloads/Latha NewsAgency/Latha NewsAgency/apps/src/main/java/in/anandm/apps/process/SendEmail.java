// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SupplyDemandCode.java

package in.anandm.apps.process;

import in.anandm.apps.domain.EmailBean;
import in.anandm.apps.domain.UserData;
import in.anandm.apps.email.EmailProcessor2;
import in.anandm.apps.event.Event;

public class SendEmail
{
	public void process(Event event)
	{
		UserData ticket = event.getUser();
		EmailBean bean = new EmailBean();
		String from = "annureddy08@gmail.com";
		String password = "Bh123CEka";
		String to = "suchinth@in.ibm.com";
		bean.setFrom(from);
		bean.setTo(to);
		bean.setPassword(password);
		if(ticket.getIsRegEmail().equalsIgnoreCase("Y")){
			bean.setSubject("Welcome to Latha Agency"+ticket.getRegNum());
		}else if (ticket.getIsRegEmail().equalsIgnoreCase("N")){
			bean.setSubject("New Ticket has been assigned "+ticket.getRegNum());	
		}
	
		/* String msgbody = (new StringBuilder("<!DOCTYPE html><html><body><table font-family: arial, sans-serif; border-collapse: collapse; width: 100%;><tr  background-color: #dddddd;>
            <th bgcolor='#737373' style='text-transform: uppercase; color:white'>EmpId</th>
            <th  style='text-transform: uppercase; background-color: #737373; color: white;'>Tower</th>
            <th  style='text-transform: uppercase; background-color: #737373; color: white;'>Name</th>
            <th  style='text-transform: uppercase; background-color: #737373; color: white;'>Location</th>
           <th  style='text-transform: uppercase; background-color: #737373; color: white;'>Demand Code</th>
           </tr  background-color: #dddddd;><tr>
           <td border: 1px solid #dddddd;  text-align: left; 
           padding: 8px;>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp")).append(emp.getEmpId()).append("</td>").append("<td border: 1px solid #dddddd;  text-align: left; padding: 8px;>&nbsp&nbsp&nbsp&nbspTower-I</td>").append("<td border: 1px solid #dddddd;  text-align: left; padding: 8px;>").append(emp.getEmpfullName()).append("</td>").append("<td border: 1px solid #dddddd;  text-align: left; padding: 8px;>").append(emp.getLocation()).append("</td>").append("<td border: 1px solid #dddddd;  text-align: left; padding: 8px;>").append(emp.getDemandCode()).append("</td>").append("</tr>").append("</table>").append("</body>").append("</html>").toString();
            bean.setBody(msgbody);*/
		try
		{
			if(EmailProcessor2.sendMail(bean, ticket))
				System.out.println("Mail Successfully sent");
			else
				System.out.println("Mail not send");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
}

