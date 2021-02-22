package com.kagboton.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloWorldController {

    // controller method to show the inital HTML form
    @RequestMapping("/showForm")
    public String showForm(){
        return "helloworld-form";
    }

    // controller method to process the HTML form
    @RequestMapping("/processForm")
    public String processForm(){
        return "helloworld";
    }

    // controler method to read form data and add to the model
    @RequestMapping("/processFormVersionTwo")
    public String letsShoutDudeLol(HttpServletRequest request, Model model){
        // reqd the request param form HTLM form
        String theName = request.getParameter("studentName");

        // create the message
        String result = "Yo! " + theName.toUpperCase();
        // add message to the model
        model.addAttribute("message", result);

        return "helloworld";
    }
}


