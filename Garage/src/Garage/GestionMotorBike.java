package Garage;

import java.util.ArrayList;

public class GestionMotorBike {
	ArrayList<Motorbike> motorbikes;
	
	public GestionMotorBike(ArrayList<Motorbike> motorbikes) {
		super();
		this.motorbikes = motorbikes;
	}

	public GestionMotorBike() {
		super();
	}
	
	Void addCar(Motorbike motorbike){
		motorbikes.add(motorbike);
		return null;
	}
	
	void deleteCar(Motorbike motorbike) {
		if(motorbikes.contains(motorbike)) {
			motorbikes.remove(motorbike);
		}
	}
	
	void addCar(String brand, String model, String date, String color, String state, String collection, Integer price){
		motorbikes.add(new Motorbike(brand, model, date, color, state, collection, price));
	}
	
	void changeColor(String color, Motorbike motorbike){
		if(motorbikes.contains(motorbike)){
			motorbikes.get(motorbikes.indexOf(motorbike)).setColor(color);
		}
	}
	
	
	void changePrice(Integer price, Motorbike motorbike){
		if(motorbikes.contains(motorbike)){
			motorbikes.get(motorbikes.indexOf(motorbike)).setPrice(price);
		}
	}



}
