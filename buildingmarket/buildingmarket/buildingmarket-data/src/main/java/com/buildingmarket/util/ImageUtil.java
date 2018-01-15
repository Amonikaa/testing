package com.buildingmarket.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.ArrayList;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

//import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.util.Base64;

@SuppressWarnings("unused")
public class ImageUtil {
	private static final String userProfileFolderName = "buildingmarketimages";
	private static final String superAdminProfileFolderName = "buildingmarketadminimages";

	/**
	 * Save multiple images on folder
	 * 
	 * @param files
	 * @param adminId
	 * @return list of images name
	 * 
	 */
	public static String saveUserImages(MultipartFile files, int userId) {
		AWSCredentials credentials = new BasicAWSCredentials("AKIAJLE3KCKBVDET37NA",
				"/Zb1TFBthz6GFDZDXZVNh61GFYztx7GWwfLYmzhn");
		AmazonS3 s3client = new AmazonS3Client(credentials);
		ObjectMetadata metadata = new ObjectMetadata();
		String fileName = null;
		String imageExt = ".jpg";
		String imageList = null;
		try {
			if (!files.isEmpty()) {
				fileName = files.getOriginalFilename();
				byte[] bytes = files.getBytes();
				String contentType = files.getContentType();
				InputStream inputStream = new ByteArrayInputStream(bytes);
				String imageName = null;
				imageName = userId + imageExt;
				metadata.setContentType(contentType);
				s3client.putObject(new PutObjectRequest(userProfileFolderName, imageName, inputStream, metadata));
				// .withCannedAcl(CannedAccessControlList.PublicRead));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return imageList;
	}

	public static String saveImages(MultipartFile files, int adminId) {
		AWSCredentials credentials = new BasicAWSCredentials("AKIAJLE3KCKBVDET37NA",
				"/Zb1TFBthz6GFDZDXZVNh61GFYztx7GWwfLYmzhn");
		AmazonS3 s3client = new AmazonS3Client(credentials);
		ObjectMetadata metadata = new ObjectMetadata();
		String fileName = null;
		String imageExt = ".jpg";
		String imageList = null;
		try {
			if (!files.isEmpty()) {
				fileName = files.getOriginalFilename();
				byte[] bytes = files.getBytes();
				String contentType = files.getContentType();
				InputStream inputStream = new ByteArrayInputStream(bytes);
				String imageName = null;
				imageName = adminId + imageExt;
				metadata.setContentType(contentType);
				s3client.putObject(new PutObjectRequest(superAdminProfileFolderName, imageName, inputStream, metadata));
				// .withCannedAcl(CannedAccessControlList.PublicRead));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return imageList;
	}

	public String getImageFromAws(int id) throws IOException {
		AWSCredentials credentials = new BasicAWSCredentials("AKIAJLE3KCKBVDET37NA",
				"/Zb1TFBthz6GFDZDXZVNh61GFYztx7GWwfLYmzhn");

		AmazonS3 s3client = new AmazonS3Client(credentials);
		String imageExt = ".jpg";
		String folderNameAndimageName = null;
		folderNameAndimageName = id + imageExt;
		S3Object s3Object = s3client.getObject(superAdminProfileFolderName, folderNameAndimageName);
		InputStream imageInputStream = s3Object.getObjectContent();
		byte[] buffer = new byte[8192];
		int bytesRead;
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		while ((bytesRead = imageInputStream.read(buffer)) != -1) {
			outputStream.write(buffer, 0, bytesRead);
		}
		String imageString = java.util.Base64.getEncoder().encodeToString(outputStream.toByteArray());
		String base64Image = "data:image/jpg" + ";base64," + imageString;
		return base64Image;
	}

	public String getUserImageFromAws(int id) throws IOException {
		AWSCredentials credentials = new BasicAWSCredentials("AKIAJLE3KCKBVDET37NA",
				"/Zb1TFBthz6GFDZDXZVNh61GFYztx7GWwfLYmzhn");

		AmazonS3 s3client = new AmazonS3Client(credentials);
		String imageExt = ".jpg";
		String folderNameAndimageName = null;
		folderNameAndimageName = id + imageExt;
		S3Object s3Object = s3client.getObject(userProfileFolderName, folderNameAndimageName);
		InputStream imageInputStream = s3Object.getObjectContent();
		byte[] buffer = new byte[8192];
		int bytesRead;
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
		while ((bytesRead = imageInputStream.read(buffer)) != -1) {
			outputStream.write(buffer, 0, bytesRead);
		}
		String imageString = java.util.Base64.getEncoder().encodeToString(outputStream.toByteArray());
		String base64Image = null;
		if (imageString != null) {
			base64Image = "data:image/jpg" + ";base64," + imageString;

		}

		return base64Image;
	}

	// save image in local
	/*
	 * public static List<String> saveImages(MultipartFile[] files, int adminId)
	 * { String fileName = null;
	 * 
	 * List<String> imageList = new ArrayList<String>(); if (files != null &&
	 * files.length > IConstant.ZERO) { for (int i = 0; i < files.length; i++) {
	 * try { if (files[i].getSize() > IConstant.ZERO) { fileName =
	 * files[i].getOriginalFilename(); byte[] bytes = files[i].getBytes(); if (i
	 * == 0) { BufferedOutputStream buffStream = new BufferedOutputStream( new
	 * FileOutputStream(new File(IConstant.ADMIN_IMAGE + adminId)));
	 * buffStream.write(bytes); buffStream.close(); imageList.add(adminId + "");
	 * }
	 * 
	 * } } catch (Exception e) { e.printStackTrace(); } } }
	 * 
	 * return imageList; }
	 * 
	 * 
	 * public static List<String> saveUserImages(MultipartFile[] files, int
	 * userId) { String fileName = null;
	 * 
	 * List<String> imageList = new ArrayList<String>(); if (files != null &&
	 * files.length > IConstant.ZERO) { for (int i = 0; i < files.length; i++) {
	 * try { if (files[i].getSize() > IConstant.ZERO) { fileName =
	 * files[i].getOriginalFilename(); byte[] bytes = files[i].getBytes(); if (i
	 * == 0) { BufferedOutputStream buffStream = new BufferedOutputStream( new
	 * FileOutputStream(new File(IConstant.USER_IMAGE + userId)));
	 * buffStream.write(bytes); buffStream.close(); imageList.add(userId + "");
	 * }
	 * 
	 * } } catch (Exception e) { e.printStackTrace(); } } }
	 * 
	 * return imageList; }
	 */

}
