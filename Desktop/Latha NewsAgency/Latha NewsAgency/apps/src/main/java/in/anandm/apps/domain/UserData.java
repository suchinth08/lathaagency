package in.anandm.apps.domain;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class UserData  implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public UserData(){
	}
	@Override
	public String toString() {
		return "UserData [Id=" + Id + ", firstName=" + firstName + ", lastName=" + lastName + ", hNo=" + hNo
				+ ", floorNo=" + floorNo + ", apartment=" + apartment + ", street=" + street + ", locality=" + locality
				+ ", city=" + city + ", pin=" + pin + ", subscription=" + subscription + ", monthly=" + monthly
				+ ", quaterly=" + quaterly + ", halfyearly=" + halfyearly + ", annual=" + annual + "]";
	}

	
	public UserData(String firstName, String lastName, String hNo, String floorNo, String apartment, String street,
			String locality, String city, String pin,String email,String password, String regNum,String userConfirmed,List<String> months,String paymentType,
			String transactionNo,String approvalType, String invoiceNum,double amount,List<String> subscription) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.hNo = hNo;
		this.floorNo = floorNo;
		this.apartment = apartment;
		this.street = street;
		this.locality = locality;
		this.city = city;
		this.pin = pin;
		this.email=email;
		this.password=password;
		this.regNum = regNum;
		this.subscription = subscription;
		this.userConfirmed = userConfirmed;
		this.months=months;
		this.paymentType=paymentType;
		this.transactionNo=transactionNo;
		this.approvalType=approvalType;
		this.invoiceNum=invoiceNum;
		this.amount = amount;
	}
	@Id
	private String 	Id;
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	private String firstName;
	private String lastName;
	private String hNo;
	private String floorNo;
	private String apartment;
	private String street;
	private String locality;
	private String city;
	private String pin;
	private List<String> subscription;
	private String monthly;
	private String quaterly;
	private String halfyearly;
	private String annual;
	private String email;
	private String password;
	private String regNum;
	private String isRegEmail = "N";
	private String Url;
	private String userConfirmed = "N";
	private List<String> months=null;
	private String month=null;
	private String paymentType=null;
	private String transactionNo=null;
	private String approvalType="Pending";
	private String invoiceNum=null;
	private String isInvoiceEmail="N";
	private double amount=0.0;
	
	
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getIsInvoiceEmail() {
		return isInvoiceEmail;
	}
	public void setIsInvoiceEmail(String isInvoiceEmail) {
		this.isInvoiceEmail = isInvoiceEmail;
	}
	public String getInvoiceNum() {
		return invoiceNum;
	}
	public void setInvoiceNum(String invoiceNum) {
		this.invoiceNum = invoiceNum;
	}
	public String getUserConfirmed() {
		return userConfirmed;
	}
	public void setUserConfirmed(String userConfirmed) {
		this.userConfirmed = userConfirmed;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public String getIsRegEmail() {
		return isRegEmail;
	}
	public void setIsRegEmail(String isRegEmail) {
		this.isRegEmail = isRegEmail;
	}
	public String getRegNum() {
		return regNum;
	}
	public void setRegNum(String regNum) {
		this.regNum = regNum;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String gethNo() {
		return hNo;
	}
	public void sethNo(String hNo) {
		this.hNo = hNo;
	}
	public String getFloorNo() {
		return floorNo;
	}
	public void setFloorNo(String floorNo) {
		this.floorNo = floorNo;
	}
	public String getApartment() {
		return apartment;
	}
	public void setApartment(String apartment) {
		this.apartment = apartment;
	}
	public String getStreet() {
		return street;
	}
	public void setStreet(String street) {
		this.street = street;
	}
	public String getLocality() {
		return locality;
	}
	public void setLocality(String locality) {
		this.locality = locality;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public List<String> getSubscription() {
		return subscription;
	}
	public void setSubscription(List<String> subscription) {
		this.subscription = subscription;
	}
	public String getMonthly() {
		return monthly;
	}
	public void setMonthly(String montly) {
		this.monthly = montly;
	}
	public String getQuaterly() {
		return quaterly;
	}
	public void setQuaterly(String quaterly) {
		this.quaterly = quaterly;
	}
	public String getHalfyearly() {
		return halfyearly;
	}
	public void setHalfyearly(String halfyearly) {
		this.halfyearly = halfyearly;
	}
	public String getAnnual() {
		return annual;
	}
	public void setAnnual(String annual) {
		this.annual = annual;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<String> getMonths() {
		return months;
	}
	public void setMonths(List<String> months) {
		this.months = months;
	}
	public String getPaymentType() {
		return paymentType;
	}
	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}
	public String getTransactionNo() {
		return transactionNo;
	}
	public void setTransactionNo(String transactionNo) {
		this.transactionNo = transactionNo;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	

	public String getApprovalType() {
		return approvalType;
	}
	public void setApprovalType(String approvalType) {
		this.approvalType = approvalType;
	}

}
