package Garage;

public class Motorbike {
	
	private String model;
	private String brand;
	private String date;
	private String color;
	private String state;
	private String collection;
	private int price;
	
	public Motorbike() {
		super();
	}

	public Motorbike(String model, String brand, String date, String color, String state, String collection, int price) {
		super();
		this.model = model;
		this.brand = brand;
		this.date = date;
		this.color = color;
		this.state = state;
		this.collection = collection;
		this.price = price;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String isState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCollection() {
		return collection;
	}

	public void setCollection(String collection) {
		this.collection = collection;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
