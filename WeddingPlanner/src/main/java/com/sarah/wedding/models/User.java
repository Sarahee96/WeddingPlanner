package com.sarah.wedding.models;


import java.util.List;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


@Entity
@Table(name="users")
public class User {
	//MEMBER VARIABLES

		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    
	    @NotEmpty(message="Partner 1's name is required!")
	    @Size(min=2, max=30, message="Partner 1's name must be between 2 and 30 characters")
	    private String partner1;
	    
	    @NotEmpty(message="Partner 2's name is required!")
	    @Size(min=2, max=30, message="Partner 2's name must be between 2 and 30 characters")
	    private String partner2;
	    
	    @NotEmpty(message="Email is required!")
	    @Email(message="Please enter a valid email!")
	    private String email;
	    
	    @NotEmpty(message="Password is required!")
	    @Size(min=8, max=128, message="Password must be between 8 and 128 characters")
	    private String password;
	    
	    @Transient
	    @NotEmpty(message="Confirm Password is required!")
	    @Size(min=8, max=128, message="Confirm Password must be between 8 and 128 characters")
	    private String confirm;
	  
	    
	    
	    //-------1 : M------ ONE TO ONE RELATIONSHIP GOES HERE 
	    @OneToMany(mappedBy="user", fetch=FetchType.LAZY)
	    private List<Wedding> weddings;
	    




		//    --- CONSTRUCTOR ---
	    public User() {
	    	
	    }


//	    -------- GETTERS AND SETTERS ----- NEED TO DO ONCE THE MEMBER VARIABLES ARE CORRECT UP TOP
	    	    

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}



		public String getPartner1() {
			return partner1;
		}

		public void setPartner1(String partner1) {
			this.partner1 = partner1;
		}



		public String getPartner2() {
			return partner2;
		}

		public void setPartner2(String partner2) {
			this.partner2 = partner2;
		}



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



		public String getConfirm() {
			return confirm;
		}

		public void setConfirm(String confirm) {
			this.confirm = confirm;
		}


}
