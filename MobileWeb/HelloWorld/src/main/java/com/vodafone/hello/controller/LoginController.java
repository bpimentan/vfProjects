package com.vodafone.hello.controller;

import com.vodafone.hello.modelclass.*;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
 



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {
    @RequestMapping(value = "/LoginForm", method = RequestMethod.GET)
    public String viewLogin(Map<String, Object> model) {
        User user = new User();
        model.put("userForm", user);
        return "LoginForm";
    }
 
    @RequestMapping(value = "/LoginSuccess", method = RequestMethod.POST)
    public String doLogin(@Valid @ModelAttribute("userForm") User userForm,
            BindingResult result, Map<String, Object> model, HttpServletRequest request, Model mod) {
 
        if (result.hasErrors()) {
            return "LoginForm";
        }
        
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
        mod.addAttribute("page", "/MobileHome"); //Pagina que vou incluir com ajax
        
        return resultPage;
 
    }
}
