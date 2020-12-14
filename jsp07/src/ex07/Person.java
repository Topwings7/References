package ex07;

import java.util.ArrayList;

public class Person {
	private String name; 
	private ArrayList<Book> booklist;
	public Person() {
	}
	public Person(String name, ArrayList<Book> booklist) {
		this.name = name;
		this.booklist = booklist;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public ArrayList<Book> getBooklist() {
		return booklist;
	}
	public void setBooklist(ArrayList<Book> booklist) {
		this.booklist = booklist;
	}
	@Override
	public String toString() {
		return "Person [name=" + name + "]";
	}
}
