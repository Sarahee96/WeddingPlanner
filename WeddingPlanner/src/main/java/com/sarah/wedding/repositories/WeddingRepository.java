package com.sarah.wedding.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.sarah.wedding.models.Wedding;

public interface WeddingRepository extends CrudRepository<Wedding, Long> {
	// this method retrieves all the expenses from the database
    List<Wedding> findAll();
}
