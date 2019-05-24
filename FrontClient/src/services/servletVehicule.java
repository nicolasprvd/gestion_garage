package services;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import services.GestionGarageServiceProxy;

/**
 * Servlet implementation class servletVehicule
 */
@WebServlet( urlPatterns="/")
public class servletVehicule extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servletVehicule() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		GestionGarageServiceProxy garage = new GestionGarageServiceProxy();
		Vehicule[] vehicules = garage.getVehicules();
		request.setAttribute("vehicules", vehicules);
		this.getServletContext().getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		// réupération des données
		String marque = request.getParameter("brand");
		String modele = request.getParameter("modele");
		String immatriculation = request.getParameter("immatriculation");
		String carburant = request.getParameter("carburant");
		String options = request.getParameter("options");
		String couleur = request.getParameter("couleur");
		int annee = Integer.parseInt(request.getParameter("date"));
		int km = Integer.parseInt(request.getParameter("km"));
		double prix = Double.parseDouble(request.getParameter("prix"));
		
		// Ajout du véhicule
		GestionGarageServiceProxy garage = new GestionGarageServiceProxy();
		Vehicule vehicule = new Vehicule(immatriculation, marque, modele, couleur, carburant, options, prix, km, annee, VehiculeType.VOITURE, false, true);
		garage.ajouterVehicule(vehicule);
		
		getServletContext().getRequestDispatcher("/WEB-INF/Basic.jsp").forward(request, response);
	}

}
