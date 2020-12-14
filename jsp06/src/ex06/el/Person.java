package ex06.el;

import java.time.LocalDate;
import java.util.ArrayList;

public class Person {
	private String name;
	private LocalDate birth;
	private String email;
	private Car car;
	private ArrayList<Phone> phonelist;
	public Person(String name, LocalDate birth, String email, Car car, ArrayList<Phone> phonelist) {
		super();
		this.name = name;
		this.birth = birth;
		this.email = email;
		this.car = car;
		this.phonelist = phonelist;
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
	public ArrayList<Phone> getPhonelist() {
		return phonelist;
	}
	public void setPhonelist(ArrayList<Phone> phonelist) {
		this.phonelist = phonelist;
	}
	@Override
	public String toString() {
		return "Person [name=" + name + ", birth=" + birth + ", email=" + email + ", car=" + car + ", phonelist="
				+ phonelist + "]";
	}
	
}
