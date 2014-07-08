package com.vodafone.hello.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MobileHomeController {
	
	@RequestMapping(value = "/MobileHome", method = RequestMethod.GET)
	public String home() {
		
		return "MobileHome";
	}
	
	@RequestMapping(value = "/MobileHome")
	public String homeAjax() {
		
		return "MobileHome";
	}

}
