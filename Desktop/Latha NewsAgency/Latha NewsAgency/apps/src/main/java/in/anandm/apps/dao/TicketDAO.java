package in.anandm.apps.dao;

import static org.springframework.data.mongodb.core.FindAndModifyOptions.options;
import static org.springframework.data.mongodb.core.query.Criteria.where;
import static org.springframework.data.mongodb.core.query.Query.query;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.FindAndModifyOptions;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import in.anandm.apps.bo.TicketBO;
import in.anandm.apps.domain.CustomSequences;
import in.anandm.apps.domain.Ticket;
import in.anandm.apps.domain.UserData;




@Repository
public class TicketDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(TicketBO.class);
	
	@Autowired
	MongoOperations mongoTemplate;
	
	public String saveUser(UserData userData){
		MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
		ArrayList monthList=null;
		 String firstName=userData.getFirstName();
		 String lastName=userData.getLastName();
		 String hNo=userData.gethNo();
		 String floorNo=userData.getFloorNo();
		 String apartment=userData.getApartment();
		 String street=userData.getStreet();
		 String locality=userData.getLocality();
		 String city=userData.getCity();
		 String pin=userData.getPin();
		 String monthly = userData.getMonthly();
		 String email = userData.getEmail();
		 String password = userData.getPassword();
		 String userConfirmed = userData.getUserConfirmed();	 
		 String month = userData.getMonth();
		 String payType = userData.getPaymentType();
		 String tranNo = userData.getTransactionNo();
		 String approvalType = userData.getApprovalType();
		 String invoiceNum=userData.getInvoiceNum();
		 double amount = userData.getAmount();
		 
		 logger.info("Monthly:"+monthly);
		 String quarterly = userData.getQuaterly();
		 logger.info("quarterly:"+quarterly);
		 String halfyearly = userData.getHalfyearly();
		 logger.info("halfyearly:"+halfyearly);
		 String annually = userData.getAnnual();
		 logger.info("annually:"+annually);
		 
		 int seq = getNextSequence("userData");
		 logger.info("Seq is :"+seq);
		 
		 String regNum = "BLR00"+seq;
		 
		 ArrayList<String> subscriptionList = new ArrayList<String>();
			if("on".equals(monthly)){
				subscriptionList.add("monthly");
			}
			if("on".equals(quarterly)){
				subscriptionList.add("quarterly");
			}
			if("on".equals(halfyearly)){
				subscriptionList.add("halfyearly");
			}
			if("on".equals(annually)){
				subscriptionList.add("annually");
			}
			
			if(tranNo != null){
				StringTokenizer monthTok = new StringTokenizer(month, ",");
				 monthList =  new ArrayList();

				while (monthTok.hasMoreElements()) {
					monthList.add(monthTok.nextElement());
				}
			}
			userData = new UserData(firstName,lastName,hNo,floorNo,apartment,street,locality,city,pin,email,password,
					regNum,userConfirmed,monthList,payType,tranNo,approvalType,invoiceNum,amount,subscriptionList);
		
			mongoOperation.save(userData);
			return regNum;
		
	}

	public String saveTicket(Ticket ticket) {
		logger.info("Start of execution of TicketDAO --> saveTicket");
		logger.info("the value of ordernumber in TicketDAO is "+ticket.getOrderNumber());
		MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
		String orderNumber = ticket.getOrderNumber();
		String testStepsArrive = ticket.getTestStepsArrive();
		String expectedBehaviour=ticket.getExpectedBehaviour();
		String actualBehaviour=ticket.getActualBehaviour();
		String expectedDeployment=ticket.getExpectedDeployment();
		logger.info("the expectedDeployment value in TicketDAO is "+expectedDeployment);
		String ATOSTicket=ticket.getATOSTicket();
		String internalQC=ticket.getInternalQC();
		String maintContact=ticket.getMaintContact();
		String devContact=ticket.getDevContact();
		String seContact=ticket.getSeContact();
		String DOMVal = ticket.getDOM();
		String MOWVal = ticket.getMOW();
		String AnyVal = ticket.getAny();
		String NAVal = ticket.getNA();
		String sbTwoRoutVal = ticket.getSbRouterTwo();
		String sbTwoAccessVal = ticket.getSbAccessTwo();
		String sbTwoOrderTypeVal = ticket.getSbOrderTypeTwo();
		String sbSpeedDetailVal = ticket.getSbSpeedTwo();
		String yesVal = ticket.getRegReq();
		String serviceline = ticket.getServiceline();
		String ipversion = ticket.getIpversion();
		String emailChainVal = ticket.getEmailChain();
		String assign = ticket.getAssign();
		String date = ticket.getDate();
		String internalTktNo = ticket.getInternalTkt();
		
		logger.info("the value of DOM is "+DOMVal);
		logger.info("the value of MOW is "+MOWVal);
		logger.info("the value of Any is "+AnyVal);
		logger.info("the value of NA is "+NAVal);
		logger.info("the value of emailChainVal is "+emailChainVal);
		logger.info("the value of sbTwoAccessVal is "+sbTwoAccessVal);
		logger.info("the value of sbTwoOrderTypeVal is "+sbTwoOrderTypeVal);
		logger.info("the value of sbSpeedDetailVal is "+sbSpeedDetailVal);
		logger.info("the value of assign is "+assign);
		logger.info("the created Date is:  "+date);
		
	/*	StringTokenizer st2 = new StringTokenizer(sbTwoVal, ",");
		ArrayList servicelineList =  new ArrayList();
		
		while (st2.hasMoreElements()) {
			servicelineList.add(st2.nextElement());
		}
		*/
		
		StringTokenizer stRouter = new StringTokenizer(sbTwoRoutVal, ",");
		ArrayList routeTypeList =  new ArrayList();
		
		while (stRouter.hasMoreElements()) {
			routeTypeList.add(stRouter.nextElement());
		}
		
		StringTokenizer stAccess = new StringTokenizer(sbTwoAccessVal, ",");
		ArrayList accessTypeList =  new ArrayList();
		while (stAccess.hasMoreElements()) {
			accessTypeList.add(stAccess.nextElement());
		}
		
		StringTokenizer stOrderType = new StringTokenizer(sbTwoOrderTypeVal, ",");
		ArrayList orderTypeList =  new ArrayList();
		while (stOrderType.hasMoreElements()) {
			orderTypeList.add(stOrderType.nextElement());
		}
		
		StringTokenizer stSpeedDetail = new StringTokenizer(sbSpeedDetailVal, ",");
		ArrayList speedDetailList =  new ArrayList();
		while (stSpeedDetail.hasMoreElements()) {
			speedDetailList.add(stSpeedDetail.nextElement());
		}
		
		StringTokenizer stServiceLine = new StringTokenizer(serviceline, ",");
		ArrayList serviceLineList =  new ArrayList();
		while (stServiceLine.hasMoreElements()) {
			serviceLineList.add(stServiceLine.nextElement());
		}
		
		StringTokenizer stIpVersion = new StringTokenizer(ipversion, ",");
		ArrayList ipversionList =  new ArrayList();
		while (stIpVersion.hasMoreElements()) {
			ipversionList.add(stIpVersion.nextElement());
		}
		logger.info("the value of ipversionList is: "+ipversionList);
		
		ArrayList<String> regionList = new ArrayList();
		if("on".equals(DOMVal)){
			regionList.add("DOM");
		}
		if("on".equals(MOWVal)){
			regionList.add("MOW");
		}
		if("on".equals(AnyVal)){
			regionList.add("Any");
		}
		if("on".equals(NAVal)){
			regionList.add("NA");
		}
		
		ArrayList<String> regressionList = new ArrayList();
		if("on".equals(yesVal)){
			regressionList.add("YES");
		}else {
			regressionList.add("NO");
		}
		
		ArrayList<String> assignList = new ArrayList();
		if("Sudheer".equals(assign)){
			assignList.add("Sudheer");
		}else if("Adarsh".equals(assign)){
			assignList.add("Adarsh");
		}
		else if("Rakesh".equals(assign)){
			assignList.add("Rakesh");
		}
		else if("Rahul".equals(assign)){
			assignList.add("Rahul");
		}
		else if("Amit".equals(assign)){
			assignList.add("Amit");
		}
		
		logger.info("the value of assignlist is: "+assignList);
		
		ticket = new Ticket(orderNumber,testStepsArrive,expectedBehaviour,
				actualBehaviour,expectedDeployment,ATOSTicket,internalQC,maintContact,
				devContact,seContact,emailChainVal,serviceLineList,regionList,
				routeTypeList,accessTypeList,orderTypeList,speedDetailList,regressionList,ipversionList,assignList,date,internalTktNo);
		mongoTemplate.save(ticket);
		List<Ticket> tickets=mongoOperation.find(new Query(Criteria.where("orderNumber").is(orderNumber)),
				Ticket.class);
		//String internalQC = tickets.get(0).getInternalQC()
		System.out.println("The tickets object values is "+tickets);
		
		// Code for converting to json object
		
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String jsonVal = gson.toJson(tickets);
		logger.info("the value of ordernumber after returning is "+tickets.get(0).toString());
		System.out.println("The json object after conversion is -------------------- "+jsonVal);
		//String jsonUpdateVal = gson.toJson(tickets.get(0).toString());
		//System.out.println("The json object after updated conversion is -------------------- "+jsonUpdateVal);
		
		String jsonFinalVal = jsonVal.substring(1, jsonVal.length()-1);
		
		logger.info("End of execution of TicketDAO --> saveTicket");
		return jsonFinalVal;
		
	}

	public String getJsonVal(String maintContact){
		logger.info("Start of execution of TicketDAO --> getJsonVal");
		MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
		/*
		List<Ticket> tickets=mongoOperation.find(new Query(Criteria.where("orderNumber").is(maintContact)),
				Ticket.class);
		*/
		
		List<UserData> tickets=mongoOperation.findAll(
				UserData.class);
		//String internalQC = tickets.get(0).getInternalQC()
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String jsonVal = gson.toJson(tickets);
		logger.info("the value of ordernumber after returning is "+tickets.get(0).toString());
		
		//String jsonUpdateVal = gson.toJson(tickets.get(0).toString());
		//System.out.println("The json object after updated conversion is -------------------- "+jsonUpdateVal);
		
		String jsonFinalVal = jsonVal.substring(1, jsonVal.length()-1);
		
		return jsonFinalVal;
	}
	
	
	public String saveUpdateTicket(Ticket ticket) {
		
		logger.info("Inside ..........--> Update saveTicket");
		logger.info("Start of execution of Update TicketDAO --> saveTicket");
		logger.info("the value of ordernumber in Update TicketDAO is "+ticket.getOrderNumber());
		MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
		String orderNumber = ticket.getOrderNumber();
		String testStepsArrive = ticket.getTestStepsArrive();
		String expectedBehaviour=ticket.getExpectedBehaviour();
		String actualBehaviour=ticket.getActualBehaviour();
		String expectedDeployment=ticket.getExpectedDeployment();
		logger.info("the expectedDeployment value in Update TicketDAO is "+expectedDeployment);
		String ATOSTicket=ticket.getATOSTicket();
		String internalQC=ticket.getInternalQC();
		String maintContact=ticket.getMaintContact();
		String devContact=ticket.getDevContact();
		String seContact=ticket.getSeContact();
		String DOMVal = ticket.getDOM();
		String MOWVal = ticket.getMOW();
		String AnyVal = ticket.getAny();
		String NAVal = ticket.getNA();
		String sbTwoRoutVal = ticket.getSbRouterTwo();
		String sbTwoAccessVal = ticket.getSbAccessTwo();
		String sbTwoOrderTypeVal = ticket.getSbOrderTypeTwo();
		String sbSpeedDetailVal = ticket.getSbSpeedTwo();
		String yesVal = ticket.getRegReq();
		String serviceline = ticket.getServiceline();
		String ipversion = ticket.getIpversion();
		String emailChainVal = ticket.getEmailChain();
		String assign = ticket.getAssign();
		String internalTktNo = ticket.getInternalTkt();
		
		
		logger.info("the value of DOM is "+DOMVal);
		logger.info("the value of MOW is "+MOWVal);
		logger.info("the value of Any is "+AnyVal);
		logger.info("the value of NA is "+NAVal);
		logger.info("the value of emailChainVal is "+emailChainVal);
		logger.info("the value of sbTwoAccessVal is "+sbTwoAccessVal);
		logger.info("the value of sbTwoOrderTypeVal is "+sbTwoOrderTypeVal);
		logger.info("the value of sbSpeedDetailVal is "+sbSpeedDetailVal);
		logger.info("the value of RegReq is "+yesVal);
		logger.info("the value of assign is "+assign);
		
		
	
		
		StringTokenizer stRouter = new StringTokenizer(sbTwoRoutVal, ",");
		ArrayList routeTypeList =  new ArrayList();
		
		while (stRouter.hasMoreElements()) {
			routeTypeList.add(stRouter.nextElement());
		}
		
		StringTokenizer stAccess = new StringTokenizer(sbTwoAccessVal, ",");
		ArrayList accessTypeList =  new ArrayList();
		while (stAccess.hasMoreElements()) {
			accessTypeList.add(stAccess.nextElement());
		}
		
		StringTokenizer stOrderType = new StringTokenizer(sbTwoOrderTypeVal, ",");
		ArrayList orderTypeList =  new ArrayList();
		while (stOrderType.hasMoreElements()) {
			orderTypeList.add(stOrderType.nextElement());
		}
		
		StringTokenizer stSpeedDetail = new StringTokenizer(sbSpeedDetailVal, ",");
		ArrayList speedDetailList =  new ArrayList();
		while (stSpeedDetail.hasMoreElements()) {
			speedDetailList.add(stSpeedDetail.nextElement());
		}
		
		StringTokenizer stServiceLine = new StringTokenizer(serviceline, ",");
		ArrayList serviceLineList =  new ArrayList();
		while (stServiceLine.hasMoreElements()) {
			serviceLineList.add(stServiceLine.nextElement());
		}
		
		StringTokenizer stIpVersion = new StringTokenizer(ipversion, ",");
		ArrayList ipversionList =  new ArrayList();
		while (stIpVersion.hasMoreElements()) {
			ipversionList.add(stIpVersion.nextElement());
		}
		
		ArrayList<String> regionList = new ArrayList();
		System.out.println(" Update  the Region list");
		if("DOM".equals(DOMVal)){
			regionList.add("DOM");
			System.out.println("After Update DOM the Region list is :"+regionList);
		}
		if("MOW".equals(MOWVal)){
			regionList.add("MOW");
		}
		if("Any".equals(AnyVal)){
			regionList.add("Any");
		}
		if("NA".equals(NAVal)){
			regionList.add("NA");
		}
		System.out.println("After Update the Final Region list is :"+regionList);
		
		ArrayList<String> regressionList = new ArrayList();
		
		if("YES".equals(yesVal)){
			regressionList.add("YES");
			System.out.println("regressionList for yes...."+regressionList);
		}else {
			regressionList.add("NO");
			System.out.println("regressionList for no...."+regressionList);
		}
		System.out.println("regressionList after final updation is : "+regressionList);
		
		ArrayList<String> assignList = new ArrayList();
		if("Sudheer".equals(assign)){
			assignList.add("Sudheer");
		}else if("Adarsh".equals(assign)){
			assignList.add("Adarsh");
		}
		else if("Rakesh".equals(assign)){
			assignList.add("Rakesh");
		}
		else if("Rahul".equals(assign)){
			assignList.add("Rahul");
		}
		else if("Amit".equals(assign)){
			assignList.add("Amit");
		}
		System.out.println("assignList after final updation is : "+assignList);	
		
		
		ticket = new Ticket(orderNumber,testStepsArrive,expectedBehaviour,
				actualBehaviour,expectedDeployment,ATOSTicket,internalQC,maintContact,
				devContact,seContact,emailChainVal,serviceLineList,regionList,
				routeTypeList,accessTypeList,orderTypeList,speedDetailList,regressionList,ipversionList,assignList,internalTktNo);
		
		
		/*
		mongoTemplate.save(ticket);
	
		List<Ticket> tickets=mongoOperation.find(new Query(Criteria.where("orderNumber").is(orderNumber)),
				Ticket.class);*/
		
		
		System.out.println("Update query...............");
		Query query = new Query();
		query.addCriteria(Criteria.where("orderNumber").is(orderNumber));
		Update update = new Update();
		
		
		
		update.set("orderNumber", orderNumber);System.out.println("orderNumber......."+orderNumber);
		update.set("testStepsArrive", testStepsArrive);System.out.println("testStepsArrive......."+testStepsArrive);
		update.set("expectedBehaviour", expectedBehaviour);System.out.println("expectedBehaviour......."+expectedBehaviour);
		update.set("actualBehaviour", actualBehaviour);System.out.println("actualBehaviour......."+actualBehaviour);
		update.set("expectedDeployment", expectedDeployment);System.out.println("expectedDeployment......."+expectedDeployment);
		update.set("ATOSTicket", ATOSTicket);System.out.println("ATOSTicket......."+ATOSTicket);
		update.set("internalQC", internalQC);System.out.println("internalQC......."+internalQC);
		update.set("maintContact", maintContact);System.out.println("maintContact......."+maintContact);
		update.set("devContact", devContact);System.out.println("devContact......."+devContact);
		update.set("seContact", seContact);System.out.println("seContact......."+seContact);
		update.set("emailChain", emailChainVal);System.out.println("Email......."+emailChainVal);
		update.set("servicelineList", serviceLineList);System.out.println("serviceLineList......."+serviceLineList);
		update.set("routeTypeList", routeTypeList);System.out.println("routeTypeList......."+routeTypeList);
		update.set("accessTypeList", accessTypeList);System.out.println("accessTypeList......."+accessTypeList);
		update.set("orderTypeList", orderTypeList);System.out.println("orderTypeList......."+orderTypeList);
		update.set("speedDetailList", speedDetailList);System.out.println("speedDetailList......."+speedDetailList);
		update.set("ipversionList", ipversionList);System.out.println("ipversionList......."+ipversionList);
		//update.set("regressionList", regressionList);System.out.println("regressionList......."+regressionList);
		update.set("regressionList", regressionList);System.out.println("regressionList......."+regressionList);
		update.set("regionList",regionList);System.out.println("regionList......."+regionList);
		update.set("assignList",assignList);System.out.println("assignList......."+assignList);
		System.out.println("Here updated query....");
		//FindAndModifyOptions().returnNew(true) = newly updated document
		//List<Ticket> tickets= (List<Ticket>) mongoOperation.findAndModify(query,update,Ticket.class,"ticket");
		//Ticket tickets=  mongoOperation.findAndModify(query,update,Ticket.class,"ticket");
		
		Ticket tickets=  mongoOperation.findAndModify(query,update,new FindAndModifyOptions().returnNew(true),Ticket.class,"ticket");
		
			
		//findOne(Query query, Class<T> entityClass, String collectionName);
		//List<Ticket> tickets= (List<Ticket>) mongoOperation.findOne(query,Ticket.class,"ticket");
		System.out.println("Ticket Object is :"+tickets);
		
		//System.out.println(query.toString());
		System.out.println("Here Updated records................");
		
		
		
		//String internalQC = tickets.get(0).getInternalQC()
		System.out.println("The Updated tickets object values is "+tickets);
		
		// Code for converting to json object
		
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String jsonVal = gson.toJson(tickets);
		//logger.info("the value of ordernumber after returning is "+tickets.get(0).toString());
		System.out.println("The updated json object after conversion is -------------------- "+jsonVal);
		//String jsonUpdateVal = gson.toJson(tickets.get(0).toString());
		//System.out.println("The json object after updated conversion is -------------------- "+jsonUpdateVal);

		String jsonFinalVal = jsonVal.substring(1, jsonVal.length()-1);
		System.out.println("The updated json object after final conversion is -------------------- "+jsonFinalVal);
		
		logger.info("End of execution of TicketDAO --> saveTicket");
		return jsonFinalVal;
		
	}
	
	 public int getNextSequence(String seqName)
	    {
	        CustomSequences counter = mongoTemplate.findAndModify(query(where("_id").is(seqName)),new Update().inc("seq",1),
	            options().returnNew(true).upsert(true),
	            CustomSequences.class);
	        return counter.getSeq();
	    }
	 
	 public int getNextSequenceForUser(String seqName)
	    {
	        CustomSequences counter = mongoTemplate.findAndModify(query(where("regNum").is(seqName)),new Update().inc("seq",1),
	            options().returnNew(true).upsert(true),
	            CustomSequences.class);
	        return counter.getSeq();
	    }
	 
	 public UserData getDatafromMongo(String pair,String value){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query2 = new Query();
			query2.addCriteria(Criteria.where(pair).is(value));
			UserData userdata = mongoOperation.findOne(query2, UserData.class);
			return userdata;
		}
	 
	 public boolean confirmDatafromMongo(String token,String  email){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query2 = new Query();
			logger.info("ConfirmDatafrom Mongo1: "+token);
			logger.info("ConfirmDatafrom Mongo1: "+email);
			query2.addCriteria(Criteria.where("_id").is(token).and("email").is(email));
			UserData userdata = mongoOperation.findOne(query2, UserData.class);
			if(userdata !=null && userdata.getEmail().equalsIgnoreCase(email)){
				Update update = new Update();
				update.set("userConfirmed", "Y");
				mongoOperation.updateFirst(query2, update, UserData.class);
				return true;
			}else{
				return false;
			}		
		}
	 
	 public UserData getDatafromMongobyTokenEmail(String token,String email){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query2 = new Query();
			logger.info("getDatafromMongobyToken Mongo1: "+token);
			logger.info("getDatafromMongobyToken Mongo1: "+email);
			query2.addCriteria(Criteria.where("_id").is(token).and("email").is(email));
			UserData userdata = mongoOperation.findOne(query2, UserData.class);
			if(userdata !=null && userdata.getEmail().equalsIgnoreCase(email)){
				return userdata;
			}else{
				return null;
			}		
		}
	 
	 public List<UserData> getAllUserData(){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			List<UserData> userdata = mongoOperation.findAll(UserData.class);
			if(userdata !=null){
				return userdata;
			}else{
				return null;
			}		
		}
	 public boolean saveUserPayData(UserData userData){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
		 ArrayList monthList=null;
			Query query2 = new Query();
			Query query3 = new Query();
			
			logger.info("saveUserPayData Mongo1: "+userData.getMonth());
			logger.info("saveUserPayData Mongo1: "+userData.getPaymentType());
			logger.info("saveUserPayData Mongo1: "+userData.getTransactionNo());
			 String month = userData.getMonth();
			 String payType = userData.getPaymentType();
			 String tranNo = userData.getTransactionNo();
			 double amount = userData.getAmount();
			 
			 int seq = getNextSequenceForUser("userData");
			 logger.info("Inv Seq is :"+seq);
			 
			 String invoiceNum = "INV00"+seq;
			 
			 if(tranNo != null){
					StringTokenizer monthTok = new StringTokenizer(month, ",");
					 monthList =  new ArrayList();

					while (monthTok.hasMoreElements()) {
						monthList.add(monthTok.nextElement());
					}
				}	 
			query2.addCriteria(Criteria.where("_id").is(userData.getId()).and("email").is(userData.getEmail()));
			UserData userdata2 = mongoOperation.findOne(query2, UserData.class);
			if(userdata2 !=null && userdata2.getEmail().equalsIgnoreCase(userData.getEmail())){
				Update update = new Update();
				update.set("months",monthList );
				update.set("paymentType",payType );
				update.set("transactionNo",tranNo );
				update.set("amount", amount);
				query3.addCriteria(Criteria.where("_id").is(userData.getMonth()).and("months").is(userData.getMonths()).and("transactionNo").is(userData.getTransactionNo()));
				UserData userdata3 = mongoOperation.findOne(query2, UserData.class);
				if(userdata3 != null && userdata3.getTransactionNo()!=null && userdata3.getTransactionNo().equalsIgnoreCase(userData.getTransactionNo())){
					logger.info("User Details already updated, redirect to error page"+userData.getTransactionNo());
					return false;
				}
				update.set("invoiceNum", invoiceNum);
				mongoOperation.updateFirst(query2, update, UserData.class);
				return true;
			}else{
				return false;
			}		
		}
	 
	 public boolean isValidUser(String userName,String  passWord){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query1 = new Query();
			query1.addCriteria(Criteria.where("email").is(userName).and("password").is(passWord).and("userConfirmed").is("Y"));
			UserData userdata = mongoOperation.findOne(query1, UserData.class);
			if(userdata !=null && userdata.getEmail().equalsIgnoreCase(userName)){
				return true;
			}else{
				return false;
			}		
		}
	 
	 public String findUserbyUserName(String userName,String  passWord){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query1 = new Query();
			query1.addCriteria(Criteria.where("email").is(userName).and("password").is(passWord).and("userConfirmed").is("Y"));
			UserData userdata = mongoOperation.findOne(query1, UserData.class);
			if(userdata !=null && userdata.getEmail().equalsIgnoreCase(userName)){
				logger.info("findUserbyUserName: "+userdata.getFirstName());
				return userdata.getFirstName();
			}else{
				return null;
			}		
		}
	 
	 public UserData findUserDatabyUserName(String userName,String  passWord){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query1 = new Query();
			query1.addCriteria(Criteria.where("email").is(userName).and("password").is(passWord).and("userConfirmed").is("Y"));
			UserData userdata = mongoOperation.findOne(query1, UserData.class);
			if(userdata !=null && userdata.getEmail().equalsIgnoreCase(userName)){
				logger.info("findUserbyUserName: "+userdata.getFirstName());
				return userdata;
			}else{
				return null;
			}		
		}
	 
	 public UserData findUserDatabyRegID(String regNum){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query1 = new Query();
			query1.addCriteria(Criteria.where("regNum").is(regNum));
			UserData userdata = mongoOperation.findOne(query1, UserData.class);
			if(userdata !=null){
				logger.info("findUserDatabyRegID: "+userdata.getFirstName());
				return userdata;
			}else{
				return null;
			}		
		}
	 
	 public boolean updateUserDatabyApprovalType(String regNum,String approvalType){
		 MongoOperations mongoOperation = (MongoOperations)mongoTemplate;
			Query query1 = new Query();
			query1.addCriteria(Criteria.where("regNum").is(regNum));
			UserData userdata = mongoOperation.findOne(query1, UserData.class);
			if(userdata !=null){
				logger.info("updateUserDatabyApprovalType: "+userdata.getFirstName());
				Update update = new Update();
				update.set("approvalType",approvalType );
				mongoOperation.updateFirst(query1, update, UserData.class);
				return true;
			}else{
				return false;
			}		
		}
	 
	 
	 
}
