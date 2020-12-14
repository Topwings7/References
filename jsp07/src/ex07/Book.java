package ex07;
//생성자 , 게터세터, 투스트링
public class Book {
	private String title;
	private String publisher;
	private int price;
	public Book() {
	}
	public Book(String title, String publisher, int price) {
		super();
		this.title = title;
		this.publisher = publisher;
		this.price = price;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Book [title=" + title + ", publisher=" + publisher + ", price=" + price + "]";
	}
}
