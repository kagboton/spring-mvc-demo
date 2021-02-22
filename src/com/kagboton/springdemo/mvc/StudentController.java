package com.kagboton.springdemo.mvc;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Value("#{countryOptions}")
    private Map<String, String> countryOptions;

    // show student form
    @RequestMapping("/showStudentForm")
    public String showStudentForm(Model model){
        Student theStudent = new Student();
        model.addAttribute("student", theStudent );
        model.addAttribute("theCountryOptions", countryOptions);
        return "student-form";
    }

    // process student form
    @RequestMapping("/processStudentForm")
    public String processStudentForm(@ModelAttribute Student student){

        System.out.println("Student processed : " + student.getFirstname() +" " +student.getLastname());

        return "student-confirmation";

    }
}
