package ex05.el;

import java.time.LocalDate;

public class Phone {
	private String model;
	private String color;
	private String brand;
	private LocalDate createDate;
	public Phone() {
		super();
	}
	public Phone(String model, String color, String brand, LocalDate createDate) {
		super();
		this.model = model;
		this.color = color;
		this.brand = brand;
		this.createDate = createDate;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public LocalDate getCreateDate() {
		return createDate;
	}
	public void setCreateDate(LocalDate createDate) {
		this.createDate = createDate;
	}
	@Override
	public String toString() {
		return "Phone [model=" + model + ", color=" + color + ", brand=" + brand + ", createDate=" + createDate + "]";
	}
	
}
