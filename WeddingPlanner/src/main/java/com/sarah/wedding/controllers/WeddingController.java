package com.sarah.wedding.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sarah.wedding.models.User;
import com.sarah.wedding.models.Wedding;
import com.sarah.wedding.services.UserService;
import com.sarah.wedding.services.WeddingService;

@Controller
public class WeddingController {
	
	@Autowired
	WeddingService weddingService;
	
	@Autowired
	UserService userService;
	
	
	//CREATE
	
	@GetMapping("/weddings/new")
	public String newTask(@ModelAttribute("newtask") Wedding wedding, Model model, HttpSession session) {
//		model.addAttribute("task" , weddingService.allTasks());
		//want to get the info from the back end to put into the front end
		/* model.addAttribute("user") */
		
		return "createtask.jsp";
	}
	
	
	@PostMapping("/weddings/new")
	public String createTask(@Valid @ModelAttribute("newtask") Wedding wedding, BindingResult result,
		@RequestParam(value="userID") Long userID) {
		if (result.hasErrors()) {			
			return "createtask.jsp";
		} else {
			User thisUser = userService.findOne(userID); 
			wedding.setUser(thisUser);
			weddingService.createTask(wedding);
			return "redirect:/weddings";
		}
	}
	
	
	//READ ALL
	
	@GetMapping("/weddings")
	public String dashboard(@ModelAttribute("wedding") Wedding wedding , Model model , HttpSession session) {
			//retrieve what is in session
		Long userID = (Long) session.getAttribute("user_id");
//		route guard
//		check if userID is or is not null
		if (userID == null) {
			return "redirect:/";
		} else {			
			//feed books into the front end
			List<Wedding> tasks = weddingService.allTasks();
			model.addAttribute("tasks", tasks);
			User user = userService.findOne(userID);
			model.addAttribute("user" , user);
			return "taskslist.jsp";
		}
	}
	
	
	
	
	
	//DELETE
	
		@DeleteMapping("/weddings/{id}/delete")
		public String delete(@PathVariable("id") Long id) {
			weddingService.deleteTask(id);
			return "redirect:/weddings";
		}
	
}
