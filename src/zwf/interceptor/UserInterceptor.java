package zwf.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import zwf.po.User;

public class UserInterceptor implements HandlerInterceptor{

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler, ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
			Object handler) throws Exception {
		
		String url = request.getRequestURI();
		//System.out.println(url);
		if(url.indexOf("/tologin") >= 0 || url.indexOf("/logout") >=0 || url.indexOf("/notify_url") >=0 ){
			request.setAttribute("msg", 0);
			System.out.println("/tologin");
			if (request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){ 
                //如果是ajax请求响应头会有，x-requested-with
            	
                System.out.print("发生ajax请求...");
                return true;
                //response.setHeader("sessionstatus", "timeout");//在响应头设置session状态  
            }
			return true;
		}
		
	    HttpSession session = request.getSession();
		User user = (User) session.getAttribute("USER");
		request.setAttribute("msg", 1);
		if(user == null){  //判断用户是否存在，不存在返回登录界面，继续拦截，存在通过拦截，放行到访问页面
            /**
             * 拦截目录下请求，是否为ajax请求
             *   是：无需登录，直接访问（因为我是用于首页的ajax登录请求）
             *   否：跳转至登录界面
             */
            if (request.getHeader("x-requested-with") != null && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")){ 
                //如果是ajax请求响应头会有，x-requested-with
            	request.setAttribute("msg", 0);
                System.out.print("发生ajax请求...");
                return true;
                //response.setHeader("sessionstatus", "timeout");//在响应头设置session状态  
            }else{
                System.out.print("返回主页...");
                request.getRequestDispatcher("/WEB-INF/jsp/login1.jsp").forward(request, response);//转发到登录界面 
            }  
            return false;  
        }else  
            return true;     
	}

}
