package com.vodafone.hello.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MobileHomeController {
	
	@RequestMapping(value = "/MobileHome", method = RequestMethod.GET)
	public String home(HttpServletRequest request, Model model) {
		String resultPage = "header"; // default
        String xhr = null;
        try{
               xhr =  request.getHeader("X-Requested-With");
        }catch (NullPointerException e) {
               // TODO: handle exception
        }
        if((xhr != null) && (xhr.equals("XMLHttpRequest"))){
               resultPage ="xhr";
        }
        model.addAttribute("page", "/MobileHome"); //Pagina que vou incluir com ajax


		return resultPage;
	}
	
	@RequestMapping(value = "/MobileHome", method = RequestMethod.POST)
	public String homePost(HttpServletRequest request, Model model) {
		String resultPage = "header"; // default
        String xhr = null;
        try{
               xhr =  request.getHeader("X-Requested-With");
        }catch (NullPointerException e) {
               // TODO: handle exception
        }
        if((xhr != null) && (xhr.equals("XMLHttpRequest"))){
               resultPage ="xhr";
        }
        model.addAttribute("page", "/MobileHome"); //Pagina que vou incluir com ajax


		return resultPage;
	}
	
}
