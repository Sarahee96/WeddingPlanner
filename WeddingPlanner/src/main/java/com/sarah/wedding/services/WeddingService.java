package com.sarah.wedding.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sarah.wedding.models.Wedding;
import com.sarah.wedding.repositories.WeddingRepository;

@Service
public class WeddingService {
	
	//DEPENDENCY INJECTION
			@Autowired
			private WeddingRepository weddingRepository;
			
			
			
			//CREATE
			public Wedding createTask(Wedding w) {
				return weddingRepository.save(w);
			}
			
			
			//READ ALL
			public List<Wedding> allTasks() {
				return weddingRepository.findAll();
			}
			
			
			//READ ONE
			public Wedding findTask(Long id) {
				Optional<Wedding> optionalTask = weddingRepository.findById(id);
				if(optionalTask.isPresent()) {
					return optionalTask.get();
				}else {
					return null;
				}
			}

			//UPDATE
			public Wedding updateTask(Wedding wedding) {
				return weddingRepository.save(wedding);
			}
			
			
			//DELETE
			public void deleteTask(Long id) {
				weddingRepository.deleteById(id);
			}
}
