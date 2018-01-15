package com.buildingmarket.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.buildingmarket.model.Blogs;

public interface BlogsRepository extends JpaRepository<Blogs, Integer>{

}
