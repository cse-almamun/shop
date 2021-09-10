package com.ecommerce.model;

public class Product {
	private int id;
	private String name;
	private Double price;
	private int category;
	private String categoryName;
	private String image;
	private String description;
	private String added_at;
	
	
	public Product() {
	}
	
	public Product(int id, String name, Double price, int category, String image, String description, String added_at) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.category = category;
		this.image = image;
		this.description = description;
		this.added_at = added_at;
	}
	
	public Product(String name, Double price, int category, String image, String description, String added_at) {
		this.name = name;
		this.price = price;
		this.category = category;
		this.image = image;
		this.description = description;
		this.added_at = added_at;
	}
	
	public Product(String name, Double price, int category, String image, String description) {
		this.name = name;
		this.price = price;
		this.category = category;
		this.image = image;
		this.description = description;
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
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAdded_at() {
		return added_at;
	}
	public void setAdded_at(String added_at) {
		this.added_at = added_at;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", category=" + category + ", image="
				+ image + ", description=" + description + ", added_at=" + added_at + "]";
	}
	
	

}
