package in.anandm.apps.domain;

import java.util.Date;

public class InvoiceData {


	public InvoiceData(){
	}

	
	private String invoiceNum=null;
	public InvoiceData(String invoiceNum, Date date, String firstName, String lastName, String hNo, String floorNo,
			String apartment, String street, String locality, String city, String pin, double amount, String email,
			String regNum, String month, String paymentType, String transactionNo) {
		super();
		this.invoiceNum = invoiceNum;
		this.date = date;
		this.firstName = firstName;
		this.lastName = lastName;
		this.hNo = hNo;
		this.floorNo = floorNo;
		this.apartment = apartment;
		this.street = street;
		this.locality = locality;
		this.city = city;
		this.pin = pin;
		this.amount = amount;
		this.email = email;
		this.regNum = regNum;
		this.month = month;
		this.paymentType = paymentType;
		this.transactionNo = transactionNo;
	}


	private Date date;
	private String firstName;
	private String lastName;
	private String hNo;
	private String floorNo;
	private String apartment;
	private String street;
	private String locality;
	private String city;
	private String pin;
	private double amount = 0.0;
	private String email;
	private String regNum;
	private String month=null;
	private String paymentType=null;
	private String transactionNo=null;

	public String getInvoiceNum() {
		return invoiceNum;
	}
	public void setInvoiceNum(String invoiceNum) {
		this.invoiceNum = invoiceNum;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
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
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegNum() {
		return regNum;
	}
	public void setRegNum(String regNum) {
		this.regNum = regNum;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
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
	
	
	
	
}
