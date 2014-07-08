package com.vodafone.hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SurveyTest {
	
	@RequestMapping(value = "/SurveyTest", method = RequestMethod.GET)
	public String home() {

		
		return "SurveyTest";
	}
	
	@RequestMapping(value = "/SurveyTest")
	public String homeAjax() {

		
		return "SurveyTest";
	}

}
