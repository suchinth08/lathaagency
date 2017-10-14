package in.anandm.apps.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.format.annotation.DateTimeFormat;

@Document
public class Ticket implements Serializable {

	private static final long serialVersionUID = 1L;

	public Ticket(){

	}


	@Id
	private String id;
	private String orderNumber;
	private String testStepsArrive;
	private String expectedBehaviour;
	private String actualBehaviour;
	private String ATOSTicket;
	
	private String internalQC;
	private String maintContact;
	private String devContact;
	private String seContact;
	private List<String> regions;
	private String DOM;
	private String MOW;
	private String Any;
	private String NA;
	private String regReq;
	private String expectedDeployment;
	private String sbTwo;
	private String sbRouterTwo;
	private String sbAccessTwo;
	private String sbOrderTypeTwo;
	private String sbSpeedTwo;
	private String emailChain;
	private String serviceline;
	private String ipversion;
	private String isAssMail = "N";
	



	//@DateTimeFormat(pattern="MM/DD/YYYY")
	private String date;
	
	private ArrayList<String> servicelineList;
	private ArrayList<String> ipversionList;
	
	private ArrayList<String> routeTypeList;
	private ArrayList<String> regionList;
	private ArrayList<String> accessTypeList;
	private ArrayList<String> orderTypeList;
	private ArrayList<String> speedDetailList;
	private ArrayList<String> regressionList;
	private String assign;
	private ArrayList<String> assignList;
	private String recreationType;
	private String internalTkt;
	
	
	private long seq;

	public long getSeq() {
		return seq;
	}

	public void setSeq(long seq) {
		this.seq = seq;
	}


	public String getInternalTkt() {
		return internalTkt;
	}

	public void setInternalTkt(String internalTkt) {
		this.internalTkt = internalTkt;
	}

	public Ticket(
			String orderNumber,
			String testStepsArrive,
			String expectedBehaviour,
			String actualBehaviour,
			String expectedDeployment,
			String ATOSTicket,
			String internalQC,
			String maintContact,
			String devContact,
			String seContact,
			String emailChain,
			ArrayList servicelineList,
			ArrayList regionList,
			ArrayList routeTypeList,
			ArrayList accessTypeList,
			ArrayList orderTypeList,
			ArrayList speedDetailList,
			ArrayList regressionList,
			ArrayList ipversionList,
			ArrayList assignList,
			String date,
			String internalTkt
	){
		this.orderNumber=orderNumber;
		this.testStepsArrive=testStepsArrive;
		this.expectedBehaviour=expectedBehaviour;
		this.actualBehaviour=actualBehaviour;
		this.expectedDeployment=expectedDeployment;
		this.ATOSTicket=ATOSTicket;
		this.internalQC=internalQC;
		this.maintContact=maintContact;
		this.devContact=devContact;
		this.seContact=seContact;
		this.emailChain=emailChain;
		this.servicelineList=servicelineList;
		this.regionList=regionList;
		this.routeTypeList=routeTypeList;
		this.accessTypeList=accessTypeList;
		this.orderTypeList=orderTypeList;
		this.speedDetailList=speedDetailList;
		this.regressionList=regressionList;
		this.ipversionList=ipversionList;
		this.assignList=assignList;
		this.date = date;
		this.internalTkt=internalTkt;
	}
	
	public Ticket(
			String orderNumber,
			String testStepsArrive,
			String expectedBehaviour,
			String actualBehaviour,
			String expectedDeployment,
			String ATOSTicket,
			String internalQC,
			String maintContact,
			String devContact,
			String seContact,
			String emailChain,
			ArrayList servicelineList,
			ArrayList regionList,
			ArrayList routeTypeList,
			ArrayList accessTypeList,
			ArrayList orderTypeList,
			ArrayList speedDetailList,
			ArrayList regressionList,
			ArrayList ipversionList,
			ArrayList assignList,
			String internalTkt
		)
	{
		this.orderNumber=orderNumber;
		this.testStepsArrive=testStepsArrive;
		this.expectedBehaviour=expectedBehaviour;
		this.actualBehaviour=actualBehaviour;
		this.expectedDeployment=expectedDeployment;
		this.ATOSTicket=ATOSTicket;
		this.internalQC=internalQC;
		this.maintContact=maintContact;
		this.devContact=devContact;
		this.seContact=seContact;
		this.emailChain=emailChain;
		this.servicelineList=servicelineList;
		this.regionList=regionList;
		this.routeTypeList=routeTypeList;
		this.accessTypeList=accessTypeList;
		this.orderTypeList=orderTypeList;
		this.speedDetailList=speedDetailList;
		this.regressionList=regressionList;
		this.ipversionList=ipversionList;
		this.assignList=assignList;
		this.internalTkt=internalTkt;
		
	}
	
	
	
	

	public ArrayList<String> getAssignList() {
		return assignList;
	}

	public void setAssignList(ArrayList<String> assignList) {
		this.assignList = assignList;
	}




	public String getAssign() {
		return assign;
	}



	public void setAssign(String assign) {
		this.assign = assign;
	}

	public String getATOSTicket() {
		return ATOSTicket;
	}

	public void setATOSTicket(String aTOSTicket) {
		ATOSTicket = aTOSTicket;
	}




	public String getRegReq() {
		return regReq;
	}


	public void setRegReq(String regReq) {
		this.regReq = regReq;
	}

	
	public String getEmailChain() {
		return emailChain;
	}


	public void setEmailChain(String emailChain) {
		this.emailChain = emailChain;
	}


	public ArrayList<String> getRegressionList() {
		return regressionList;
	}


	public void setRegressionList(ArrayList<String> regressionList) {
		this.regressionList = regressionList;
	}



	public ArrayList<String> getSpeedDetailList() {
		return speedDetailList;
	}


	public void setSpeedDetailList(ArrayList<String> speedDetailList) {
		this.speedDetailList = speedDetailList;
	}


	public String getSbSpeedTwo() {
		return sbSpeedTwo;
	}


	public void setSbSpeedTwo(String sbSpeedTwo) {
		this.sbSpeedTwo = sbSpeedTwo;
	}


	public ArrayList<String> getOrderTypeList() {
		return orderTypeList;
	}


	public void setOrderTypeList(ArrayList<String> orderTypeList) {
		this.orderTypeList = orderTypeList;
	}


	public String getSbOrderTypeTwo() {
		return sbOrderTypeTwo;
	}


	public void setSbOrderTypeTwo(String sbOrderTypeTwo) {
		this.sbOrderTypeTwo = sbOrderTypeTwo;
	}


	public ArrayList<String> getAccessTypeList() {
		return accessTypeList;
	}


	public void setAccessTypeList(ArrayList<String> accessTypeList) {
		this.accessTypeList = accessTypeList;
	}


	public String getSbAccessTwo() {
		return sbAccessTwo;
	}


	public void setSbAccessTwo(String sbAccessTwo) {
		this.sbAccessTwo = sbAccessTwo;
	}


	public ArrayList<String> getRouteTypeList() {
		return routeTypeList;
	}


	public void setRouteTypeList(ArrayList<String> routeTypeList) {
		this.routeTypeList = routeTypeList;
	}


	public String getSbRouterTwo() {
		return sbRouterTwo;
	}


	public void setSbRouterTwo(String sbRouterTwo) {
		this.sbRouterTwo = sbRouterTwo;
	}


	public String getSbTwo() {
		return sbTwo;
	}


	public void setSbTwo(String sbTwo) {
		this.sbTwo = sbTwo;
	}


	public ArrayList<String> getServicelineList() {
		return servicelineList;
	}


	public void setServicelineList(ArrayList<String> servicelineList) {
		this.servicelineList = servicelineList;
	}


	public String getExpectedDeployment() {
		return expectedDeployment;
	}

	public void setExpectedDeployment(String expectedDeployment) {
		this.expectedDeployment = expectedDeployment;
	}

	public ArrayList<String> getRegionList() {
		return regionList;
	}

	public void setRegionList(ArrayList<String> regionList) {
		this.regionList = regionList;
	}

	public String getDOM() {
		return DOM;
	}

	public void setDOM(String dOM) {
		DOM = dOM;
	}

	public String getMOW() {
		return MOW;
	}

	public void setMOW(String mOW) {
		MOW = mOW;
	}

	public String getAny() {
		return Any;
	}

	public void setAny(String any) {
		Any = any;
	}

	public String getNA() {
		return NA;
	}

	public void setNA(String nA) {
		NA = nA;
	}

	public List<String> getRegions() {
		return regions;
	}

	public void setRegions(List<String> regions) {
		this.regions = regions;
	}

	


	public String getInternalQC() {
		return internalQC;
	}

	public void setInternalQC(String internalQC) {
		this.internalQC = internalQC;
	}

	public String getMaintContact() {
		return maintContact;
	}

	public void setMaintContact(String maintContact) {
		this.maintContact = maintContact;
	}

	public String getDevContact() {
		return devContact;
	}

	public void setDevContact(String devContact) {
		this.devContact = devContact;
	}

	public String getSeContact() {
		return seContact;
	}

	public void setSeContact(String seContact) {
		this.seContact = seContact;
	}

	public String getActualBehaviour() {
		return actualBehaviour;
	}

	public void setActualBehaviour(String actualBehaviour) {
		this.actualBehaviour = actualBehaviour;
	}

	public String getExpectedBehaviour() {
		return expectedBehaviour;
	}

	public void setExpectedBehaviour(String expectedBehaviour) {
		this.expectedBehaviour = expectedBehaviour;
	}

	public String getTestStepsArrive() {
		return testStepsArrive;
	}

	public void setTestStepsArrive(String testStepsArrive) {
		this.testStepsArrive = testStepsArrive;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	
	public String getServiceline() {
		return serviceline;
	}

	public void setServiceline(String serviceline) {
		this.serviceline = serviceline;
	}

	public String getIpversion() {
		return ipversion;
	}

	public void setIpversion(String ipversion) {
		this.ipversion = ipversion;
	}

	public String getDate() {
		return date;
	}


	public void setDate(String string) {
		this.date = string;
	}
	
	public String getRecreationType() {
		return recreationType;
	}

	public void setRecreationType(String recreationType) {
		this.recreationType = recreationType;
	}



	public String getIsAssMail() {
		return isAssMail;
	}

	public void setIsAssMail(String isAssMail) {
		this.isAssMail = isAssMail;
	}


	@Override
	public String toString() {
		return "Ticket [id=" + id + ", orderNumber=" + orderNumber + ", testStepsArrive=" + testStepsArrive
				+ ", expectedBehaviour=" + expectedBehaviour + ", actualBehaviour=" + actualBehaviour + ", ATOSTicket="
				+ ATOSTicket + ", internalQC=" + internalQC + ", maintContact=" + maintContact + ", devContact="
				+ devContact + ", seContact=" + seContact + ", regions=" + regions + ", DOM=" + DOM + ", MOW=" + MOW
				+ ", Any=" + Any + ", NA=" + NA + ", regReq=" + regReq + ", expectedDeployment=" + expectedDeployment
				+ ", sbTwo=" + sbTwo + ", sbRouterTwo=" + sbRouterTwo + ", sbAccessTwo=" + sbAccessTwo
				+ ", sbOrderTypeTwo=" + sbOrderTypeTwo + ", sbSpeedTwo=" + sbSpeedTwo + ", emailChain=" + emailChain
				+ ", servicelineList=" + servicelineList + ", routeTypeList=" + routeTypeList + ", regionList="
				+ regionList + ", accessTypeList=" + accessTypeList + ", orderTypeList=" + orderTypeList
				+ ", speedDetailList=" + speedDetailList + ", regressionList=" + regressionList + ", assign=" 
				+ assign + ", assignList=" + assignList + ", date=" + date +  "]";
	}
	

	


}
