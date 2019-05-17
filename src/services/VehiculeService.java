package services;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

import models.Vehicule;
import models.VehiculeType;


@WebService
@SOAPBinding(style=Style.DOCUMENT, use=SOAPBinding.Use.LITERAL, parameterStyle= SOAPBinding.ParameterStyle.WRAPPED) 
public interface VehiculeService {

	//A documenter
	@WebMethod(operationName = "getVehicule")
	Vehicule getVehicule(@WebParam(name="immatriculation") String immatriculation);
	
	@WebMethod(operationName = "ajouterVehicule")
	void ajouterVehicule(@WebParam(name="vehicule") Vehicule v);
	
	@WebMethod(operationName = "getVehicules")
	List<Vehicule> getVehicules();
	
	@WebMethod(operationName = "getVehiculesParMarque")
	List<Vehicule> getVehiculesParMarque(@WebParam(name="marque") String marque);
	
	@WebMethod(operationName = "getVehiculesParPrix")
	List<Vehicule> getVehiculesParPrix(@WebParam(name="prix") double prix);
	
	@WebMethod(operationName = "getVehiculesParType")
	List<Vehicule> getVehiculesParType(@WebParam(name="type") VehiculeType type);
}
