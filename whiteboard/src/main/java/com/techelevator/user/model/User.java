package com.techelevator.user.model;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

/**
 * User
 */
public class User {
	@NotBlank(message="Username is required")
    private String username;

    @NotBlank(message="Role is required")
    private String role;
    private long id;
    
    @NotBlank(message="enter zipcode")
    @Pattern(regexp="^\\d{5}$", message="Enter zipcode")
    private String zipcode;

    @NotBlank(message="Password is required")
    private String password;
    private String confirmPassword;

    private boolean passwordMatching;
    @AssertTrue(message = "Passwords must match")
    public boolean isPasswordMatching() {
        if (password != null) {
            return password.equals(confirmPassword);
        }
        return true;
    }
    @NotBlank(message="Email address is required")
	@Email(message="Email must be a valid email address")
	private String email;
	
	@NotBlank(message="Verify email address is required")
	private String verifyEmail;
	
	@SuppressWarnings("unused")
	private boolean emailMatching; // Dummy property to get matching vaildation working
	@AssertTrue(message="Emails must match")
	public boolean isEmailMatching() {
		if(email != null) {
			return email.equals(verifyEmail);
		} else {
			return false;
		}
	}
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

    public String getPassword() {
        return password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }
    public String getVerifyEmail() {
		return verifyEmail;
	}
	/**
	 * @param verifyEmail the verifyEmail to set
	 */
	public void setVerifyEmail(String verifyEmail) {
		this.verifyEmail = verifyEmail;
	}

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @return the id
     */
    public long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(long id) {
        this.id = id;
    }
    
    public String getZipcode() {
    	return zipcode;
    }
    
    public void setZipcode(String zipcode) {
    	this.zipcode = zipcode;
    }
    /**
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}






