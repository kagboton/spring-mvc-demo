package com.kagboton.springdemo.mvc;

import java.util.HashMap;
import java.util.LinkedHashMap;

public class Student {

    private String firstname;
    private String lastname;
    private String country;

    private LinkedHashMap<String, String> favouriteLanguageOptions;

    private String favouriteLanguage;

    private String [] preferedIDEs;

    public Student() {
        favouriteLanguageOptions = new LinkedHashMap<>();
        favouriteLanguageOptions.put("Java", "Java");
        favouriteLanguageOptions.put("C#", "C#");
        favouriteLanguageOptions.put("Python", "Python");

    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String[] getPreferedIDEs() {
        return preferedIDEs;
    }

    public void setPreferedIDEs(String[] preferedIDEs) {
        this.preferedIDEs = preferedIDEs;
    }

    public LinkedHashMap<String, String> getFavouriteLanguageOptions() {
        return favouriteLanguageOptions;
    }

    public String getFavouriteLanguage() {
        return favouriteLanguage;
    }

    public void setFavouriteLanguage(String favouriteLanguage) {
        this.favouriteLanguage = favouriteLanguage;
    }
}
