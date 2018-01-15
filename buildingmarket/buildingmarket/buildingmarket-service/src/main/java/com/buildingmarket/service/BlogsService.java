package com.buildingmarket.service;

import java.util.List;

import com.buildingmarket.model.Blogs;

public interface BlogsService {
	boolean saveBlogsDetails(Blogs blogs);

	public List<Blogs> findAll();

	boolean deleteBlogs(int blogsId);

	Blogs updateBlogs(int blogId);

	
}
