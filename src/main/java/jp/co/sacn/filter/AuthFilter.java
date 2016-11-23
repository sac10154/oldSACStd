package jp.co.sacn.filter;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.Filter;
import javax.servlet.FilterChain;

public class AuthFilter implements Filter{
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain){
		try{
	    	String target = ((HttpServletRequest)request).getRequestURI();
			HttpSession session = ((HttpServletRequest)request).getSession();

			if (session == null){
				/* 未認証 */
		        session = ((HttpServletRequest)request).getSession(true);
	        	String session_id = session.getId();
		        session.setAttribute("target", target);
	        	session.setAttribute("sessionid", session_id);
		        ((HttpServletResponse)response).sendRedirect("/");
			}else{
				Object loginCheck = session.getAttribute("login");
				if (loginCheck == null){
					/* エラー */
					session.setAttribute("login", "NG");
			        ((HttpServletResponse)response).sendRedirect("/Error");
				}
			}
			chain.doFilter(request, response);
		}catch (ServletException se){
		}catch (IOException e){
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException{
	}

	public void destroy(){
	}
}
