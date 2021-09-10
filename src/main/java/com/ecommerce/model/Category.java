package com.ecommerce.model;

public class Category {
	private int id;
	private String name;
	private String description;
	private String imagePath;
	private String addedAt;
	
	public Category() {}
	
	public Category(int id, String name, String description, String imagePath, String addedAt) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.imagePath = imagePath;
		this.addedAt = addedAt;
	}
	
	
	public Category(String name, String description, String imagePath, String addedAt) {
		this.name = name;
		this.description = description;
		this.imagePath = imagePath;
		this.addedAt = addedAt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getAddedAt() {
		return addedAt;
	}

	public void setAddedAt(String addedAt) {
		this.addedAt = addedAt;
	}
	
	
	
	
}
