package com.sarah.wedding.services;

import java.util.List;
import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.sarah.wedding.models.LoginUser;
import com.sarah.wedding.models.User;
import com.sarah.wedding.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
    private UserRepository userRepository;
    
//    CREATE
	public User register(User newUser, BindingResult result) {
        if(userRepository.findByEmail(newUser.getEmail()).isPresent()) {
            result.rejectValue("email", "Unique", "This email is already in use!");
        }
        if(!newUser.getPassword().equals(newUser.getConfirm())) {
            result.rejectValue("confirm", "Matches", "The Confirm Password must match Password!");
        }
        if(result.hasErrors()) {
            return null;
        } else {
            String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
            newUser.setPassword(hashed);
            return userRepository.save(newUser);
        }
    }
    
//  VALIDATE USER
  public User login(LoginUser newLogin, BindingResult result) {
      if(result.hasErrors()) {
          return null;
      }
      Optional<User> potentialUser = userRepository.findByEmail(newLogin.getEmail());
      if(!potentialUser.isPresent()) {
          result.rejectValue("email", "Unique", "Login error");
          return null;
      }
      User user = potentialUser.get();
      if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
      	System.out.println("inside password error");
          result.rejectValue("password", "Matches", "Login error");
      }
      if(result.hasErrors()) {
          return null;
      } else {
          return user;
      }
  }
  
//  READ ONE
//  findOne
  				//needs to be a Long
  public User findOne(Long id) {
  	Optional<User> optionalUser = userRepository.findById(id);
  	if (optionalUser.isPresent()) {
  		return optionalUser.get();
  	} else {
  		return null;
  	}
  }
  
  
  //READ ALL
  
  public List<User> allUsers() {
  	return userRepository.findAll();
  }
}
