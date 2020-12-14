package ex05.el;

import java.time.LocalDate;
//생성자 게터세터, 투스트링
public class Student {
	private String name;
	private Score score;
	private LocalDate birth;
	public Student() {
		super();
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Score getScore() {
		return score;
	}
	public void setScore(Score score) {
		this.score = score;
	}
	public LocalDate getBirth() {
		return birth;
	}
	public void setBirth(LocalDate birth) {
		this.birth = birth;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", birth=" + birth + "]";
	}
	
}
