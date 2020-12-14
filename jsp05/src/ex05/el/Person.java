package ex05.el;

import java.time.LocalDate;

public class Person {
	private String name;
	private LocalDate birth;
	private String email;
	private Car car;
	private Phone phone;
	public Person() {
		super();
	}
	public Person(String name, LocalDate birth, String email, Car car, Phone phone) {
		super();
		this.name = name;
		this.birth = birth;
		this.email = email;
		this.car = car;
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public LocalDate getBirth() {
		return birth;
	}
	public void setBirth(LocalDate birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Car getCar() {
		return car;
	}
	public void setCar(Car car) {
		this.car = car;
	}
	public Phone getPhone() {
		return phone;
	}
	public void setPhone(Phone phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "Person [name=" + name + ", birth=" + birth + ", email=" + email + ", car=" + car + ", phone=" + phone
				+ "]";
	}
	
	
}
