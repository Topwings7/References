package ex06.el;

public class Car {
	private int carnumber;
	private int mileage;
	private String carname;
	private String carbrand;
	public Car() {
		super();
	}
	public Car(int carnumber, int mileage, String carname, String carbrand) {
		super();
		this.carnumber = carnumber;
		this.mileage = mileage;
		this.carname = carname;
		this.carbrand = carbrand;
	}
	public int getCarnumber() {
		return carnumber;
	}
	public void setCarnumber(int carnumber) {
		this.carnumber = carnumber;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getCarname() {
		return carname;
	}
	public void setCarname(String carname) {
		this.carname = carname;
	}
	public String getCarbrand() {
		return carbrand;
	}
	public void setCarbrand(String carbrand) {
		this.carbrand = carbrand;
	}
	@Override
	public String toString() {
		return "Car [carnumber=" + carnumber + ", mileage=" + mileage + ", carname=" + carname + ", carbrand="
				+ carbrand + "]";
	}
	
}
