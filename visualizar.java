//package com.mkyong.xml.dom;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.swing.*;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.File;
import java.io.IOException;


public class visualizar   {
    visualizar(){
        xml();
    }



    static void xml() {
        final String FILENAME = "C://Users//westw//Desktop//planificacion-V1//Reto.xml";




        // Instantiate the Factory
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();

        try {

            dbf.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);

            // parse XML file
            DocumentBuilder db = dbf.newDocumentBuilder();

            Document doc = db.parse(new File(FILENAME));



            doc.getDocumentElement().normalize();

            System.out.println("Root Element :" + doc.getDocumentElement().getNodeName());
            System.out.println("------");

            // get <staff>
            NodeList list = doc.getElementsByTagName("coche");

            for (int temp = 0; temp < list.getLength(); temp++) {

                Node node = list.item(temp);

                if (node.getNodeType() == Node.ELEMENT_NODE) {

                    Element element = (Element) node;

                    // get text
                    String id_coche = element.getElementsByTagName("id_coche").item(0).getTextContent();
                    String matricula = element.getElementsByTagName("matricula").item(0).getTextContent();
                    String marca = element.getElementsByTagName("marca").item(0).getTextContent();
                    String modelo = element.getElementsByTagName("modelo").item(0).getTextContent();
                    String caballos = element.getElementsByTagName("caballos").item(0).getTextContent();
                    String color = element.getElementsByTagName("color").item(0).getTextContent();
                    String ano = element.getElementsByTagName("ano").item(0).getTextContent();
                    String consumo = element.getElementsByTagName("consumo").item(0).getTextContent();
                    String precio_base = element.getElementsByTagName("precio_base").item(0).getTextContent();



                    //System.out.println(list);
                    System.out.println("id coche  : " + id_coche);
                    System.out.println("matricula  : " + matricula);
                    System.out.println("marca  : " + marca);
                    System.out.println("modelo  : " + modelo);
                    System.out.println("caballos  : " + caballos);
                    System.out.println("color  : " + color);
                    System.out.println("ano  : " + ano);
                    System.out.println("consumo  : " + consumo);
                    System.out.println("precio base  : " + precio_base);




                }
            }

        } catch (ParserConfigurationException | SAXException | IOException e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        new visualizar();
    }


}