package in.anandm.apps;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.anandm.apps.bo.TicketBO;
import in.anandm.apps.dao.TicketDAO;
import in.anandm.apps.domain.InvoiceData;
import in.anandm.apps.domain.Ticket;
import in.anandm.apps.domain.UserData;
import in.anandm.apps.event.MasterEvent;
import in.anandm.apps.excel.CreateExcel;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController implements HttpSessionListener {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	TicketBO ticketBO;
	static String  regNum=null;
	static String inVoiceNum=null;
	private TicketDAO ticketDAO;
	int seqNo,updSeqNo;
	String internalTkt;
	UserData userGlobData;
	InvoiceData invoiceData;

	@Autowired
	public void setPostBO(TicketBO ticketBO) {
		this.ticketBO = ticketBO;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		logger.info("Main Home.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate );

		return "login";
	}


	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/pages/examples/requestlogin", method = RequestMethod.GET)
	public String reqlogin(@RequestParam String userName,
			@RequestParam String passWord,HttpSession session, Model model) {
		logger.info("Welcome home! The client locale is {}.", userName);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		session.setAttribute("loggedInUser", "dummy");
		String formattedDate = dateFormat.format(date);
		model.addAttribute("loginError","Error logging In, retry");
		return  "pages/"+"examples"+"/"+"login";
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/pages/examples/login", method = RequestMethod.GET)
	public String login(HttpSession session, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);

		session.setAttribute("loggedInUser", "dummy");
		String formattedDate = dateFormat.format(date);
		model.addAttribute("loginError","Error logging In, retry");
		return "pages/"+"examples"+"/"+"login";
	}

	@RequestMapping(value = "/pages/{type}/{page}", method = RequestMethod.GET)
	public String ReConfirm(@PathVariable(value="type") String type,@PathVariable(value="page") String page, Model model) throws IOException {
		logger.info("Confirm Page:"+type);
		logger.info("Confirm Page:"+page);
		model.addAttribute("RegNum", regNum);
		model.addAttribute("inVoice", inVoiceNum);
		
		if(page.equalsIgnoreCase("excel")){
			List<UserData> userDataList = ticketBO.getAllUserData();
			 String filename = "C:/SubscriberData.xls";
			CreateExcel.genExcel(userDataList,filename);
		}
		
		if(userGlobData!=null){
			model.addAttribute("firstName", userGlobData.getFirstName());
			model.addAttribute("lastName", userGlobData.getLastName());
			model.addAttribute("hNo", userGlobData.gethNo());
			model.addAttribute("floorNo", userGlobData.getFloorNo());
			model.addAttribute("apartment", userGlobData.getApartment());
			model.addAttribute("street", userGlobData.getStreet());
			model.addAttribute("locality", userGlobData.getLocality());
			model.addAttribute("city", userGlobData.getCity());
			model.addAttribute("pin", userGlobData.getPin());
			model.addAttribute("regNum",userGlobData.getRegNum());
		}
		if(invoiceData!=null){
			logger.info("inside invoice assign data"+invoiceData.getInvoiceNum());
			model.addAttribute("invoiceNum",invoiceData.getInvoiceNum());
			model.addAttribute("date",invoiceData.getDate());
			model.addAttribute("firstName",invoiceData.getFirstName());
			model.addAttribute("lastName",invoiceData.getLastName());
			model.addAttribute("hNo",invoiceData.gethNo());
			model.addAttribute("floorNo",invoiceData.getFloorNo());
			model.addAttribute("apartment",invoiceData.getApartment());
			model.addAttribute("street",invoiceData.getStreet());
			model.addAttribute("city",invoiceData.getCity());
			model.addAttribute("pin",invoiceData.getPin());
			model.addAttribute("month",invoiceData.getMonth());
			model.addAttribute("paymentType",invoiceData.getPaymentType());
			model.addAttribute("transactionNo",invoiceData.getTransactionNo());
			model.addAttribute("regNum",invoiceData.getRegNum());
			model.addAttribute("amount",invoiceData.getAmount());
			model.addAttribute("email",invoiceData.getEmail());		
		}
        logger.info("going to"+"pages/"+type+"/"+page);
		return "pages/"+type+"/"+page;
	}

	/**
	 * Simply selects the home view to render by returning its name./apps/pages/tables/dataSubmit
	 */
	@RequestMapping(value = "/pages/login", method = RequestMethod.POST)
	public String userlogin(@RequestParam String userName,@RequestParam String passWord, HttpSession session,ModelMap model) {

		if(userName.equals("admin") && passWord.equals("admin123$")){
			session.setAttribute("loggedInUser", "admin");
			return "index";
		}

		if(ticketBO.isValidUser(userName, passWord)){
			logger.info("User is valid");
			String user = ticketBO.findUserbyUserName(userName, passWord);
			session.setAttribute("loggedInUser", user);
			userGlobData = ticketBO.findUserDatabyUserName(userName, passWord);
			logger.info("We are data: "+userGlobData.getFirstName());
			return "GetPayDetails";
		}else{
			return "loginError";
		}
	}


	@RequestMapping(value = "/pages/tables/data", method = RequestMethod.GET)
	public ModelAndView viewTables(Locale locale, Model model,
			@ModelAttribute("ticketForm") Ticket ticket,
			BindingResult result) {
		logger.info("Inside the data tables screen --------------- ");
		String returnView =  "pages/"+"tables"+"/"+"data";
		ModelAndView modelView = new ModelAndView(returnView);
		return modelView;
	}


	@RequestMapping(value = "/pages/tables/dataResults", method = RequestMethod.GET)
	public ModelAndView viewTablesResult(Locale locale, Model model,
			@ModelAttribute("subForm") UserData userData,HttpServletRequest request,
			BindingResult result) throws IOException {

		logger.info("I am here to get the NewsPaper Subscriber data ");
		String regNum = null;
		String approvalType = null;
		String isUpdateSuccess=null;

		if(request.getParameterMap()!= null){
			Map<String, String[]> parameters = request.getParameterMap();

			for(String key : parameters.keySet()) {

				if(key.equals("id")){
					String[] vals = parameters.get(key);
					for(String val : vals)
						regNum=val;
				}

				if(key.equals("approvalType")){
					String[] vals = parameters.get(key);
					for(String val : vals)
						approvalType="Approved";
				}
			}
			
			boolean isUpdatedone = this.ticketBO.updateUserDatabyApprovalType(regNum, approvalType);
			if(isUpdatedone){
				isUpdateSuccess ="UpdateSuccess";
				userData = ticketBO.findUserDatabyRegID(regNum);
				String appUrl = getAppUrl(request,userData.getId(),userData.getEmail(),"/pages/examples/sendInvoice");
				userData.setUrl(appUrl);
				userData.setRegNum(regNum);
				userData.setIsInvoiceEmail("Y");
				MasterEvent s = new MasterEvent();	
				s.publishevent(userData);
			}else{
				isUpdateSuccess ="UpdateNotSuccess";
			}
			
		}

		String jsonReturnVal = "["+ticketBO.getUserVal("")+"]";

		String returnView =  "pages/"+"tables"+"/"+"data";
		ModelAndView modelView = new ModelAndView(returnView);
		modelView.addObject("UpdateSuccess", isUpdateSuccess);
		modelView.addObject("jsonVal", jsonReturnVal);
		return modelView;
	}

	@RequestMapping(value = "/pages/examples/Reqregister", method = RequestMethod.POST)
	public String ReqpagesOfTypes(Locale locale, HttpServletRequest request,Model model,
			@ModelAttribute("subForm") UserData userData,
			BindingResult result) {
		logger.info("Create User for Subscription Reqregister");
		logger.info("Name in from  ---------------- "+userData.getFirstName());
		regNum = ticketBO.saveUser(userData);
		model.addAttribute("RegNum", regNum);
		UserData userMonData = ticketBO.getDatafromMongo("email", userData.getEmail());
		String appUrl = getAppUrl(request,userMonData.getId(),userMonData.getEmail(),"/pages/examples/ConfirmUser");
		userData.setUrl(appUrl);
		userData.setIsRegEmail("Y");
		userData.setRegNum(regNum);
		MasterEvent s = new MasterEvent();	
		s.publishevent(userData);
		return "Confirm";
	}

	@RequestMapping(value = "/pages/examples/updatePayDetails", method = RequestMethod.POST)
	public String ReqpagesOfTypesPay(@RequestParam String regNum,@RequestParam String month, 
			@RequestParam String paymentType
			,@RequestParam String transactionNo,
			@RequestParam String amount,
			ModelMap model) {
		logger.info("In updatePayDetails to update details"+regNum);
		UserData userData = ticketBO.findUserDatabyRegID(regNum);
		if(userData!=null){
			userData.setMonth(month);
			userData.setPaymentType(paymentType);
			userData.setTransactionNo(transactionNo);
			userData.setAmount(Double.parseDouble(amount));
			boolean isSuccess = ticketBO.saveUserPayData(userData);	
			if(!isSuccess){
				return "PayConfirmErr";
			}
			userData = ticketBO.findUserDatabyRegID(regNum);
			logger.info("For Debug invoice number is "+inVoiceNum);
			inVoiceNum = userData.getInvoiceNum();
		}
		return "PayConfirm";
	}


	//@RequestMapping(value = "/pages/{type}/{page}", method = RequestMethod.GET)
	@RequestMapping(value = "/pages/examples/register", method = RequestMethod.GET)
	public String pagesOfTypes(Locale locale, HttpServletRequest request,Model model,
			@ModelAttribute("subForm") UserData userData,
			BindingResult result) {
		logger.info("Create User for Subscription");
		if(userData != null && userData.getFirstName()!=null){
			logger.info("Iam inside this"+userData.getFirstName());
		}else{
			logger.info("Iam not inside htis");
		}

		return "pages/"+"examples"+"/"+"register";
	}

	@RequestMapping(value = "/pages/examples/ConfirmUser", method = RequestMethod.GET)
	public String pagesOfTypes2(Locale locale, HttpServletRequest request,Model model,
			@ModelAttribute("subForm") UserData userData,
			@RequestParam("token") final String token,@RequestParam("email") final String email) {
		logger.info("Confirm User Email"+userData.getEmail());
		if(this.ticketBO.confirmDatafromMongo(token,email)){
			return "ReConfirm";
		}else{
			return "ReConfirmError";
		}
	}
	
	@RequestMapping(value = "/pages/examples/sendInvoice", method = RequestMethod.GET)
	public String pagesOfTypes3(Locale locale, HttpServletRequest request,Model model,
			@ModelAttribute("subForm") UserData userData,
			@RequestParam("token") final String token,@RequestParam("email") final String email) {
		logger.info("Confirm User Email"+userData.getEmail());

		if(this.ticketBO.confirmDatafromMongo(token,email)){
			DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			Date date = new Date();
			System.out.println(dateFormat.format(date));
			userData = ticketBO.getDatafromMongobyTokenEmail(token,email);
			invoiceData = new InvoiceData();
			if(userData != null && userData.getEmail().equals(email)){
				invoiceData.setInvoiceNum(userData.getInvoiceNum());
				invoiceData.setDate(date);
				invoiceData.setFirstName(userData.getFirstName());
				invoiceData.setLastName(userData.getLastName());
				invoiceData.sethNo(userData.gethNo());
				invoiceData.setFloorNo(userData.getFloorNo());
				invoiceData.setApartment(userData.getApartment());
				invoiceData.setStreet(userData.getStreet());
				invoiceData.setCity(userData.getCity());
				invoiceData.setPin(userData.getPin());
				invoiceData.setEmail(userData.getEmail());
				invoiceData.setAmount(userData.getAmount());
				invoiceData.setPaymentType(userData.getPaymentType());
				invoiceData.setTransactionNo(userData.getTransactionNo());
				invoiceData.setRegNum(userData.getRegNum());
				invoiceData.setMonth(userData.getMonth());
				/*for (String month : userData.getMonths()) {
					invoiceData.setMonth(month);
				}	*/	
			}

			return "invoice";
		}else{
			return "invoiceErr";
		}
	}

	public static String getAppUrl(HttpServletRequest request,String token,String email,String webpage) {
		return "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()
		+"/"+webpage+"?token=" + token+"&amp;email="+email;
	}

	@Override
	public void sessionCreated(HttpSessionEvent event) {
		// TODO Auto-generated method stub
		logger.info("==== Session is created ====");
		event.getSession().setMaxInactiveInterval(1*60);

	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		// TODO Auto-generated method stub
		logger.info("==== Session is destroyed ====");
	}


}
