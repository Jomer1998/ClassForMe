package com.tfg.classforme.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.servlet.error.BasicErrorController;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class ExceptionHandlerConfiguration {
	
	@Autowired
	private BasicErrorController errorController;
	
	@ExceptionHandler(Exception.class)
	public String defaultErrorHandler(HttpServletRequest request, Exception e) {
		request.setAttribute("javax.servlet.error.request_uri", request.getPathInfo());
		request.setAttribute("javax.servlet.error.status_code", 400);
		request.setAttribute("exception", e);
        return "exception";
	}
	
}
