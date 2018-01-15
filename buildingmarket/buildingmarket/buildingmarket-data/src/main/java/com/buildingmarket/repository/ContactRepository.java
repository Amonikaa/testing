package com.buildingmarket.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.buildingmarket.model.Contact;

public interface ContactRepository extends JpaRepository<Contact, Integer> {

}
