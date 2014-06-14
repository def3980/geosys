//package com.geosys.util;
//
//import java.io.IOException;
//
//import javax.servlet.Filter;
//import javax.servlet.FilterChain;
//import javax.servlet.FilterConfig;
//import javax.servlet.ServletException;
//import javax.servlet.ServletRequest;
//import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebFilter;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebFilter(urlPatterns = { "*.xhtml" })
//public class NoCacheFilter implements Filter {
//
//	@Override
//	public void doFilter(ServletRequest req, ServletResponse res,
//			FilterChain chain) throws IOException, ServletException {
//		HttpServletRequest request = (HttpServletRequest) req;
//		HttpServletResponse response = (HttpServletResponse) res;
//
//		if (!"partial/ajax".equals(request.getHeader("Faces-Request"))) {
//			if (request.getRequestURI().contains("login")) {
//				response.setHeader("Cache-Control",
//						"no-cache, no-store, must-revalidate"); // HTTP 1.1.
//				response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
//				response.setDateHeader("Expires", 0); // Proxies.
//				request.getSession().invalidate();
//			}
//		}
//		chain.doFilter(req, res);
//	}
//
//	@Override
//	public void init(FilterConfig filterConfig) throws ServletException {
//		// TODO Auto-generated method stub
//	}
//
//	@Override
//	public void destroy() {
//		// TODO Auto-generated method stub
//	}
//
//}