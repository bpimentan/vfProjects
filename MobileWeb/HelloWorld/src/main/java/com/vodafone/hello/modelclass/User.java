package com.vodafone.hello.modelclass;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class User {
	@NotEmpty
	@Email
	
	private String email;
	
	@NotEmpty(message = "Escreva a sua passowrd.")
	@Size(min = 6, max = 15, message = "A tua password têm de ter 6 a 15 caracteres")
	private String password;
	
	public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
}
