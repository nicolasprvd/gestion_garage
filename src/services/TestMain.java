package services;


import javax.xml.bind.JAXBContext;
import javax.xml.bind.Marshaller;

import models.Vehicule;
import models.VehiculeType;

public class TestMain {

	public static void main(String[] args) {
		
		JAXBContext context = JAXBContext.newInstance(Vehicule.class);
        Marshaller m = context.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);

        // Write to System.out
        m.marshal(, System.out);

        // Write to File
        m.marshal(bookstore, new File(BOOKSTORE_XML));

	}

}
