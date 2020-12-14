package objectIOTest;

import java.io.Serializable;

public class Student implements Serializable { // 직렬화 가능하게 함
	private static final long serialVersionUID = 2140836905880294128L; // UID 없으면 JVM이 자동으로 만들어주지만 역직렬화시 에러날수있음  정해줘야함
	private String name;
	private int age;
	private double height;

	public Student() {
	}

	public Student(String name, int age, double height) {
		this.name = name;
		this.age = age;
		this.height = height;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + ", height=" + height + "]";
	}
}
