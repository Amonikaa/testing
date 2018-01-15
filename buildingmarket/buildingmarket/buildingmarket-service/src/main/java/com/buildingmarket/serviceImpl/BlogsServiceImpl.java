package com.buildingmarket.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.buildingmarket.model.Blogs;
import com.buildingmarket.repository.BlogsRepository;
import com.buildingmarket.service.BlogsService;

@Service
public class BlogsServiceImpl implements BlogsService {

	@Autowired
	private BlogsRepository blogsRepository;

	public boolean saveBlogsDetails(Blogs blogs) {

		Blogs oldBlogs = blogsRepository.save(blogs);

		if (oldBlogs != null) {

			return true;
		}

		return true;

	}

	public List<Blogs> findAll() {

		List<Blogs> oldList = blogsRepository.findAll();

		if (oldList != null) {
			return oldList;
		}

		return null;
	}

	public boolean deleteBlogs(int blogsId) {
		blogsRepository.delete(blogsId);
		return true;
	}

	public Blogs updateBlogs(int blogId) {
		Blogs blogs = blogsRepository.findOne(blogId);
		return blogs;
	}

}