package services;

import java.util.ArrayList;
import java.util.List;

import javax.jws.WebService;

import models.Vehicule;
import models.VehiculeType;

@WebService(endpointInterface = "services.VehiculeService")
public class VehiculeServiceImpl implements VehiculeService {
	
	List<Vehicule> listeVehicules;
	
	public VehiculeServiceImpl() {
		this.listeVehicules = new ArrayList<>();
	}

	@Override
	public Vehicule getVehicule(String immatriculation) {
		Vehicule v = null;
		for(int i = 0; i < listeVehicules.size(); i++) {
			System.out.println("Je suis dans le for");
			if(listeVehicules.get(i).getImmatriculation().equals(immatriculation)) {
				System.out.println("je suis dans le if");
				v = listeVehicules.get(i);
			}
		}
		return v;
	}

	@Override
	public List<Vehicule> getVehiculesParMarque(String marque) {
		List<Vehicule> vehiculesMarque = new ArrayList<>();
		
		for(int i = 0; i < listeVehicules.size(); i++) {
			if(listeVehicules.get(i).getMarque().equals(marque)) {
				vehiculesMarque.add(listeVehicules.get(i));
			}
		}
		return vehiculesMarque;
	}

	@Override
	public List<Vehicule> getVehiculesParPrix(double prix) {
		List<Vehicule> vehiculesPrix = new ArrayList<>();
		
		for(int i = 0; i < listeVehicules.size(); i++) {
			if(listeVehicules.get(i).getPrix() == prix) {
				vehiculesPrix.add(listeVehicules.get(i));
			}
		}
		return vehiculesPrix;
	}

	@Override
	public List<Vehicule> getVehiculesParType(VehiculeType type) {
		List<Vehicule> vehiculesType = new ArrayList<>();
		
		for(int i = 0; i < listeVehicules.size(); i++) {
			if(listeVehicules.get(i).getType().equals(type)) {
				vehiculesType.add(listeVehicules.get(i));
			}
		}
		return vehiculesType;
	}

	@Override
	public List<Vehicule> getVehicules() {
		return this.listeVehicules;
		
	}

	@Override
	public void ajouterVehicule(Vehicule v) {
		/*Vehicule v1 = new Vehicule();
		v1.setCouleur("vert");*/
		if ( v==null) System.err.println("v null");
		listeVehicules.add(v);
		System.out.println("vehicule ajoute");
		
	}

}
