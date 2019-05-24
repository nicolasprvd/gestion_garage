package services;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.rmi.RemoteException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Main {

	public static void main(String[] args) {
		GestionGarageServiceProxy garage = new GestionGarageServiceProxy();
		
		try {
			Vehicule[] vehicule = garage.getVehicules();
			for (int i=0; i<vehicule.length; i++) {
				System.out.println(vehicule[i].getMarque());
			}
			
		} catch (RemoteException e) {
			e.printStackTrace();
		}
		
		
		

	}
	/*
	public static void forward( HttpServletRequest request, HttpServletResponse response, String url ) throws ServletException, IOException {
		RequestDispatcher disp = Context.getRequestDispatcher(url);
		disp.forward(request, response);
	} */

}
