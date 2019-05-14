package Garage;

import java.util.ArrayList;

public class GestionVoiture {
	ArrayList<Car> cars;
	
	public GestionVoiture(ArrayList<Car> cars) {
		super();
		this.cars = cars;
	}

	public GestionVoiture() {
		super();
	}

	void addCar(Car car){
		cars.add(car);
	}
	
	void deleteCar(Car car) {
		if(cars.contains(car)) {
			cars.remove(car);
		}
	}
	
	void addCar(String brand, String model, String date, String color, String state, String collection, Integer price){
		cars.add(new Car(brand, model, date, color, state, collection, price));
	}
	
	void changeColor(String color, Car car){
		if(cars.contains(car)){
			cars.get(cars.indexOf(car)).setColor(color);
		}
	}
	
	void changePrice(Integer price, Car car){
		if(cars.contains(car)){
			cars.get(cars.indexOf(car)).setPrice(price);
		}
	}



}
