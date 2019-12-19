package zwf.controller;


import java.io.File;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;










import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;

import zwf.alipay.AlipayConfig;
import zwf.po.Payment;
import zwf.po.User;
import zwf.service.PaymentService;
import zwf.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private PaymentService paymentService;
	/*
	 * 用户登录
	 * 
	 */
	@RequestMapping(value="/tologin")
	public String tologin(){
		return "login1";
	}
	@RequestMapping(value="/toMain")
	public String toMain(){
		return "Main";
	}
	@RequestMapping(value="/Test")
	public String toTest(){
		return "Test";
	}
	@RequestMapping(value="/Yizhu")
	public String toYizhu(){
		
		return "Yizhu";
	}
	@RequestMapping(value="/Medical_Orders_Check")
	public String toMedical_Orders_Check(){
		return "Medical_Orders_Check";
	}
	@RequestMapping(value="/Medical_Orders_Action")
	public String toMedical_Orders_Action(){
		return "Medical_Orders_Action";
	}
	@RequestMapping(value="/Requisition")
	public String toRequisition(){
		return "Requisition";
	}
	@RequestMapping(value="/Requisition_return")
	public String toRequisition_return(){
		return "Requisition_return";
	}
	@RequestMapping(value="/Requisition_select")
	public String toRequisition_select(){
		return "Requisition_select";
	}
	@RequestMapping(value="/Requisition_assisagin")
	public String toRequisition_assisagin(){
		return "Requisition_assisagin";
	}
	@RequestMapping(value="/Payment")
	public String toPayment(){
		return "Payment";
	}
	@RequestMapping(value="/Inspection_item")
	public String toInspection_item(){
		return "Inspection_item";
	}
	@RequestMapping(value="/Payment_select")
	public String toPayment_select(){
		return "Payment_select";
	}
	@RequestMapping(value="/Payment_today")
	public String toPayment_today(){
		return "Payment_today";
	}
	@RequestMapping(value="/Payment_patient_out")
	public String toPayment_patient_out(){
		return "Payment_patient_out";
	}
	@RequestMapping(value="/Transfer")
	public String toTransfer(){
		return "Transfer";
	}
	/*@RequestMapping(value="/notify_url", method = RequestMethod.POST)
	@Transactional(readOnly = false)
	public void tonotify_url(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//获取支付宝POST过来反馈信息
		Map<String,String> params = new HashMap<String,String>();
		Map<String,String[]> requestParams = request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用
			
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			
			params.put(name, valueStr);
		}
		
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名
	
		if(signVerified) {//验证成功
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
			
			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
		
			//交易状态
			String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"),"UTF-8");
			
			String passback_params = new String(request.getParameter("passback_params").getBytes("ISO-8859-1"),"UTF-8");
			System.out.println("out_trade_no"+out_trade_no+"========="+passback_params);
			if(trade_status.equals("TRADE_FINISHED")){
				//判断该笔订单是否在商户网站中已经做过处理
				//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				//如果有做过处理，不执行商户的业务程序
					
				//注意：
				//退款日期超过可退款期限后（如三个月可退款），支付宝系统发送该交易状态通知
			}else if (trade_status.equals("TRADE_SUCCESS")){
				//判断该笔订单是否在商户网站中已经做过处理
				//如果没有做过处理，根据订单号（out_trade_no）在商户网站的订单系统中查到该笔订单的详细，并执行商户的业务程序
				//如果有做过处理，不执行商户的业务程序
				
				//注意：
				//付款完成后，支付宝系统发送该交易状态通知
			}
			PrintWriter out = response.getWriter();
			out.println("success");
			
		}else {//验证失败
			PrintWriter out = response.getWriter();
			out.println("fail");
		
			//调试用，写文本函数记录程序运行情况是否正常
			//String sWord = AlipaySignature.getSignCheckContentV1(params);
			//AlipayConfig.logResult(sWord);
		}
	
	
	}*/
	@RequestMapping(value="/return_url")
	public String toreturn_url(){
		return "Patient_message1";
	}
	/*@RequestMapping(value="/notify_url")
	public String tonotify_url(){
		return "notify_url";
	}*/
	
	@RequestMapping(value="/Medical_Orders_Check2")
	public String toMedical_Orders_Check2(String patient_id,Model model,String patient_name,String deparment_name,String room_name,String medical_orders_id){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+deparment_name);
		System.out.println("================="+room_name);
		System.out.println("================="+medical_orders_id);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		model.addAttribute("medical_orders_id",medical_orders_id);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Medical_Orders_Check2";
	}
	@RequestMapping(value="/Medical_Orders_Action2")
	public String Medical_Orders_Action2(String patient_id,Model model,String patient_name,String deparment_name,String room_name,String medical_orders_id){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+deparment_name);
		System.out.println("================="+room_name);
		System.out.println("================="+medical_orders_id);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		model.addAttribute("medical_orders_id",medical_orders_id);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Medical_Orders_Action2";
	}
	@RequestMapping(value="/Requisition2")
	public String Requisition2(String patient_id,Model model,String patient_name,String deparment_name,String room_name,Integer requisition_id){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+deparment_name);
		System.out.println("================="+room_name);
		System.out.println("================="+requisition_id);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		model.addAttribute("requisition_id",requisition_id);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Requisition2";
	}
	@RequestMapping(value="/Requisition2_assisagin")
	public String Requisition2_assisagin(Model model,String storage_id){
		System.out.println("================="+storage_id);
		model.addAttribute("storage_id", storage_id);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Requisition2_assisagin";
	}
	@RequestMapping(value="/Requisition2_cancel")
	public String Requisition2_cancel(String patient_id,Model model,String patient_name,String deparment_name,String room_name,Integer requisition_id){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+deparment_name);
		System.out.println("================="+room_name);
		System.out.println("================="+requisition_id);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		model.addAttribute("requisition_id",requisition_id);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Requisition2_cancel";
	}
	@RequestMapping(value="/Payment2")
	public String Payment2(String patient_id,Model model,String patient_name,String deparment_name,String room_name){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+deparment_name);
		System.out.println("================="+room_name);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Payment2";
	}
	@RequestMapping(value="/Payment2_select")
	public String Payment2_select(String patient_id,Model model,String patient_name,String deparment_name,String room_name){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+deparment_name);
		System.out.println("================="+room_name);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Payment2_select";
	}
	@RequestMapping(value="/Payment2_today")
	public String Payment2_today(String patient_id,Model model,String patient_name,String deparment_name,String room_name,Timestamp start_time){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+start_time);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		model.addAttribute("start_time",start_time);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Payment2_today";
	}
	@RequestMapping(value="/Payment3")
	public String Payment3(String patient_id,Model model,String patient_name,String deparment_name,String room_name){
		System.out.println("================="+patient_id);
		System.out.println("================="+patient_name);
		System.out.println("================="+deparment_name);
		System.out.println("================="+room_name);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("patient_name",patient_name);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Payment3";
	}
	@RequestMapping(value="/Inspection_action2")
	public String Inspection_action2(String patient_id,Model model,String inspection_id){
		System.out.println("================="+patient_id);
		System.out.println("================="+inspection_id);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("inspection_id",inspection_id);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Inspection_action2";
	}
	@RequestMapping(value="/Inspection_show2")
	public String Inspection_show2(String patient_id,Model model,String inspection_id){
		System.out.println("================="+patient_id);
		System.out.println("================="+inspection_id);
		model.addAttribute("patient_id", patient_id);
		model.addAttribute("inspection_id",inspection_id);
		//model.setViewName("forward:Medical_Orders_Action2");
		return "Inspection_show2";
	}
	@RequestMapping(value="/index")
	public String toindex(){
		return "index";
	}
	@RequestMapping(value="/index1")
	public String toindex1(){
		return "index1";
	}
	@RequestMapping(value="/index2")
	public String toindex2(){
		return "index2";
	}
	@RequestMapping(value="/index3")
	public String toindex3(){
		return "index3";
	}
	@RequestMapping(value="/index4")
	public String toindex4(){
		return "index4";
	}
	@RequestMapping(value="/index5")
	public String toindex5(){
		return "index5";
	}
	@RequestMapping(value="/index6")
	public String toindex6(){
		return "index6";
	}
	@RequestMapping(value="/upload")
	public String upload(){
		return "upload";
	}
	/*
	 * 用户列表
	 * 
	 */
	@RequestMapping(value="/toUserList")
	public String toUserList(){
		return "UserList";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		session.invalidate();
		return "login1";
	}
	/*
	 *
	 * 添加用户
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/addUser",method=RequestMethod.POST)
	public String addUser(User user){
		System.out.println("get addUser");
		int row = this.userService.addUser(user);
		System.out.println(user);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	/*
	 * 
	 * 更新用户
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/updateUser",method=RequestMethod.POST)
	public String updateUser(User user){
		System.out.println("get updateUser");
		int row = this.userService.updateUser(user);
		System.out.println(user);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	@RequestMapping(value = "/denglu",method=RequestMethod.POST)
	@ResponseBody
	public String login(String username,String password,Integer role_id,Model model,HttpServletRequest request){
		User user = userService.login(username, password,role_id);
		System.out.println(user);
		//System.out.println("username="+username+";password="+password);
		if(user != null){
			System.out.println("用户名为："+username+",密码为："+password);
			HttpSession session = request.getSession();
			session.setAttribute("USER", user);
			System.out.println(user.getRole_id());
			//session.setAttribute("userId", user.getLogin_name());
			return "yes";
			
		}else{
			    System.out.println(user);
				return "no";
			}	
	}
	@RequestMapping("selectUserAll")
	@ResponseBody
	public  Map<String,Object> selectAll(int pageSize,int pageNumber,String login_name,String user_male){
		/*所需参数*/
		Map<String, Object> param=new HashMap<String, Object>();
		
		if (pageNumber <= 1){
			pageNumber = 1;
		}
		int beginNumber = (pageNumber - 1)* pageSize;
		param.put("beginNumber", beginNumber);
		param.put("limit", pageSize);
		param.put("login_name", login_name);
		param.put("user_male", user_male);
		
		int total = userService.getCount(login_name,user_male);
		List<User> list = userService.selectAll(param);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("rows", list);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(list);
		return responseMap;
	}
	
	
	/*
	 * 
	 * 删除用户
	 * 
	 */
	@ResponseBody
	@RequestMapping(value="/deleteUserList",method=RequestMethod.POST)
	public String deleteUserList(String user_id){
		System.out.println("get deleteUserList");
		int row = this.userService.deleteUser(user_id);
		System.out.println(user_id);
		System.out.println(row);
		if(row > 0){
			System.out.println("成功");
		}else{
			System.out.println("失败");
		}
		return null;
		
		
	}
	/*@RequestMapping("uupload")
    public ModelAndView upload(@RequestParam("name")String name,
            @RequestParam("uploadfile")List<MultipartFile> uploadfile, 
            HttpServletRequest request) {
		
				if(!uploadfile.isEmpty() && uploadfile.size() > 0){
					for(MultipartFile file : uploadfile){
						String originalFilename = file.getOriginalFilename();
						String dirPath = "/file/";
						//File filePath = new File(dirPath);
						String newFilename = UUID.randomUUID() + "_" + originalFilename;
						try{
							file.transferTo(new File(dirPath + newFilename));
						}catch(Exception e ){
							e.printStackTrace();
							return null;
						}
					}
						return null;
				}else{
					return null;
				}
		
				
		
	}*/
	@RequestMapping("/uupload")
	public String updateimg(HttpServletRequest request, @RequestParam("user_image")MultipartFile user_image) {
		HttpSession session=request.getSession();
		// 文件的原始名称
		String originalFilename = null;
		// 新的文件名
		String newfileName = null;
		// 获取上传文件的原始名称
		originalFilename = user_image.getOriginalFilename();
		// 获取后缀名
		String extension = FilenameUtils.getExtension(originalFilename);
		// UUID创建随机String 用于作为新的文件名
		String string = UUID.randomUUID().toString();
		// 新的文件名
		newfileName = string.replaceAll("-", "") + "." + extension;
		// 设置上传文件的保存地址目录
		String dirPath = "e:/file/";
		File filePath = new File(dirPath);
		System.out.println(111);
		// 如果目录不存在就创建目录
		if (!filePath.exists())
			filePath.mkdirs();
		try {
			user_image.transferTo(new File(dirPath + newfileName));
		} catch (Exception e) {
			e.printStackTrace();
			return "no";
		}
		newfileName="/file/"+newfileName;
		session.setAttribute("USER_IMG", newfileName);
		System.out.println("=================="+newfileName);
		return null;
		
		
	}
	@RequestMapping("selectDoctor")
	@ResponseBody
	public  Map<String,Object> selectDoctor(User user){
		/*所需参数*/		
		int total = this.userService.getCountDoctor(user);
		List<User> data = this.userService.selectDoctor(user);
		Map<String,Object> responseMap = new HashMap<String,Object>();
		responseMap.put("data", data);
		responseMap.put("total", total);
		System.out.println("total:"+total);
		System.out.println(data);
		return responseMap;
	}
	
	/**
     * 快捷支付调用支付宝支付接口
     * @param model，id，payables， 
     * @throws IOException，AlipayApiException
     * @return Object
     * @author AAA_有梦想一起实现
     * @date 2017年11月29日
     */
    @RequestMapping("alipaySum")
    public Object alipayIumpSum(Model model,Payment payment,  HttpServletResponse response)
            throws Exception {
    	System.out.println("+++++"+payment);
        // 获得初始化的AlipayClient
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id,
                AlipayConfig.merchant_private_key, "json", AlipayConfig.charset,
                AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
        // 设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);
        //SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        // 商户订单号，商户网站订单系统中唯一订单号，必填
        String out_trade_no = payment.getPayment_id();
        // 付款金额，必填
        //String timeout_express = "1c";
        Double total_amount = payment.getAdvance_payment();
        String subject = payment.getPayment_name();
        String patient_id = payment.getPatient_id();
        String payee = payment.getPayee();
        //设置自定义参数
        //String passback_params = "payment_id="+payment_id+"payables="+payables+"subject="+subject;
        String passback_params = patient_id+" "+payee;
        System.out.println(passback_params);
        //将参数encode + "\"passback_params\":\""+ passback_params2 +"\","
        String passback_params2 =java.net.URLEncoder.encode(passback_params,"UTF-8");
        alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no + "\"," 
                + "\"total_amount\":\"" + total_amount+ "\"," 
        		+ "\"subject\":\"" + subject + "\","
        		/*+ "\"goods_detail\":[{" 
        		+ "\"goods_id\":\"apple-01\"," 
        		+ "\"alipay_goods_id\":\"20010001\"," 
        		+ "\"goods_name\":\"ipad\"," 
        		+ "\"quantity\":1," 
        		+ "\"price\":2000," 
        		+ "\"goods_category\":\"34543238\"," 
        		+ "\"categories_tree\":\"124868003|126232002|126252004\"," 
        		+ "\"body\":\"特价手机\"" 
        		+ "        }]," */
                + "\"passback_params\":\"" + passback_params2 + "\","
        		+ "\"qr_pay_mode\":\"" + "1" + "\","
                /*+ "\"timeout_express\":\""+ timeout_express +"\","*/
                + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        // 请求
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        // System.out.println(result);
        AlipayConfig.logResult(result);// 记录支付日志
        response.setContentType("text/html; charset=gbk");
        PrintWriter out = response.getWriter();
        out.print(result);
        return null;
    }
    
    @RequestMapping(value="/notify_url")
	public void tonotify_url(HttpServletResponse response,HttpServletRequest request)throws Exception{
		
		String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"), "GBK");
		// 付款金额
		String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"), "GBK");
		// 支付宝交易号
		String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"), "GBK");
		// 交易说明
		//String cus = new String(request.getParameter("body").getBytes("ISO-8859-1"), "GBK");
		// 交易状态
		String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "GBK");
		String passback_params = new String(request.getParameter("passback_params").getBytes("ISO-8859-1"), "GBK");
		String passback_params2 =java.net.URLDecoder.decode(passback_params,"UTF-8");
		String subject = request.getParameter("subject");
		String gmt_payment = request.getParameter("gmt_payment");
		System.out.println("out_trade_no="+out_trade_no+"total_amount="
		+total_amount+"trade_no="+trade_no+"subject="+subject
		+"gmt_payment="+gmt_payment+"passback_params2="+passback_params2);
		String str=passback_params2; 
		       String[] strarray=str.split(" "); 
		       for (int i = 0; i < strarray.length; i++){
		    	   System.out.println(strarray[i]);
		       } 
		       String patient_id = strarray[0];
		        String payee = strarray[1];     
		if (trade_status.equals("TRADE_SUCCESS")){
			System.out.println("111111111111111111111");
			Payment payment = new Payment();
			Double money = Double.valueOf(total_amount);
			payment.setAdvance_payment(money);
			payment.setPatient_id(patient_id);
			payment.setPayee(payee);
			payment.setPayment_id(out_trade_no);
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
			Date date = sdf.parse(gmt_payment); 
			payment.setAdvance_payment_time(date);
			payment.setPayment_name(subject);
			int row = this.paymentService.addPayment_message(payment);
			System.out.println("=========================="+row);
		}
	}
}

