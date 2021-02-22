package com.kagboton.springdemo.mvc;

import javax.validation.constraints.*;

public class Customer {

    private String firstname;

    @NotNull(message = "is required")
    @Size(min = 1, message = "is required")
    private String lastname;

    @NotNull(message = "is required")
    @Min(value=0, message = "must be equal to or greater than zero")
    @Max(value=10, message = "must be less than or equal to 10")
    private Integer freepasses;

    @Pattern(regexp = "^[a-zA-Z0-9]{5}", message = "only 5 caracters/digits")
    private String postalCode;

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

    public Integer getFreepasses() {
        return freepasses;
    }

    public void setFreepasses(Integer freepasses) {
        this.freepasses = freepasses;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
}
