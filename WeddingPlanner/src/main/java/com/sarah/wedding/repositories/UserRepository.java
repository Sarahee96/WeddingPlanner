package com.sarah.wedding.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.sarah.wedding.models.User;

public interface UserRepository extends CrudRepository<User, Long> {
	// this method retrieves all the expenses from the database
    List<User> findAll();
	Optional<User> findByEmail(String email);
}
