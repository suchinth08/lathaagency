package in.anandm.apps.bo;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.anandm.apps.dao.TicketDAO;
import in.anandm.apps.domain.Ticket;
import in.anandm.apps.domain.UserData;

@Service
public class TicketBO {
	
	private static final Logger logger = LoggerFactory.getLogger(TicketBO.class);
	
	private TicketDAO ticketDAO;
	
	@Autowired
	public void setTicketDAO(TicketDAO ticketDAO) {
		this.ticketDAO = ticketDAO;
	}
	
	public String saveTicket(Ticket ticket) {
		logger.info("Start of execution of TicketBO --> saveTicket");
		logger.info("the value of date is "+ticket.getExpectedDeployment());
		String jsonVal = this.ticketDAO.saveTicket(ticket);
		logger.info("End of execution of TicketBO --> saveTicket");
		return jsonVal;
	}
	
	public String saveUser(UserData userData) {
		String jsonVal = this.ticketDAO.saveUser(userData);
		logger.info("End of execution of TicketBO --> saveUser");
		return jsonVal;
	}
	
	public String getUserVal(String maintContact){
		logger.info("Start of execution of TicketBO --> getTicketVal");
		String jsonVal = this.ticketDAO.getJsonVal(maintContact);
		logger.info("End of execution of TicketBO --> getTicketVal");
		return jsonVal;
		
	}
	
	public String getTicketVal(String maintContact){
		logger.info("Start of execution of TicketBO --> getTicketVal");
		String jsonVal = this.ticketDAO.getJsonVal(maintContact);
		logger.info("End of execution of TicketBO --> getTicketVal");
		return jsonVal;
		
	}
	
	public String saveUpdateTicket(Ticket ticket) {
		logger.info("Start of execution of Update TicketBO --> saveTicket");
		logger.info("the value of date is: "+ticket.getExpectedDeployment());
		String jsonVal = this.ticketDAO.saveUpdateTicket(ticket);
		logger.info("End of execution of TicketBO --> saveTicket");
		return jsonVal;
	}
	
	public int getNextSequence(String key){
		int jsonVal = this.ticketDAO.getNextSequence(key);
		logger.info("End of execution of TicketBO --> saveTicket");
		return jsonVal;
		
	}
	
	public UserData getDatafromMongo(String pair,String value){
		UserData userData = this.ticketDAO.getDatafromMongo(pair, value);
		return userData;
	}
	
	 public boolean confirmDatafromMongo(String token,String email){
		 return  (this.ticketDAO.confirmDatafromMongo(token,email));
	 }
	 
	 public boolean isValidUser(String userName,String  passWord){
		 return(this.ticketDAO.isValidUser(userName, passWord));
	 }
	
	 public String findUserbyUserName(String userName,String  passWord){
		 return(this.ticketDAO.findUserbyUserName(userName, passWord));
	 }
	
	 public UserData findUserDatabyUserName(String userName,String  passWord){
		 return(this.ticketDAO.findUserDatabyUserName(userName, passWord));
	 }
	 
	 public UserData findUserDatabyRegID(String regNum){
		 return(this.ticketDAO.findUserDatabyRegID(regNum));
	 }
	 public boolean saveUserPayData(UserData userData){
		 return(this.ticketDAO.saveUserPayData(userData));
	 }
	 public boolean updateUserDatabyApprovalType(String regNum,String approvalType){
		 return(this.ticketDAO.updateUserDatabyApprovalType(regNum, approvalType));
	 }
	 
	 public UserData getDatafromMongobyTokenEmail(String token,String  email){
	 	return(this.ticketDAO.getDatafromMongobyTokenEmail(token,email));
	 }
	 public List<UserData> getAllUserData(){
		 return(this.ticketDAO.getAllUserData());
	 }
}
