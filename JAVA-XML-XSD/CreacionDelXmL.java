import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class reto {

    public static void main(String argv[]) {
        try {
            DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

            //Elemento raíz
            Document doc = docBuilder.newDocument();
            Element coches = doc.createElement("coches");
            doc.appendChild(coches);

            
            //Primer elemento
            Element coche = doc.createElement("coche");
            coches.appendChild(coche);
            //Segundo elemento
            Element id = doc.createElement("id_coche");
            id.setTextContent("2");
            coche.appendChild(id);
            //Tercer elemento
            Element matricula = doc.createElement("matricula");
            matricula.setTextContent("9852NBX");
            coche.appendChild(matricula);
            //Cuarto elemento
            Element marca = doc.createElement("marca");
            marca.setTextContent("Ferrari");
            coche.appendChild(marca);
            //Quinto elemento
            Element modelo = doc.createElement("modelo");
            modelo.setTextContent("SF90STRADALE");
            coche.appendChild(modelo);
            //Sexto elemento
            Element caballos = doc.createElement("caballos");
            caballos.setTextContent("650");
            coche.appendChild(caballos);
            //Septimo elemento
            Element color = doc.createElement("color");
            color.setTextContent("rojo");
            coche.appendChild(color);
            //Octavo elemento
            Element ano = doc.createElement("ano");
            ano.setTextContent("2002");
            coche.appendChild(ano);
            //Noveno elemento
            Element consumo = doc.createElement("consumo");
            consumo.setTextContent("13");
            coche.appendChild(consumo);
            //Decimo elemento
            Element precio_base = doc.createElement("precio_base");
            precio_base.setTextContent("1200");
            coche.appendChild(precio_base);


            //Se escribe el contenido del XML en un archivo
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            DOMSource source = new DOMSource(doc);
            StreamResult result = new StreamResult(new File("C://Users//westw//Desktop//planificacion-V1//Reto.xml"));

            transformer.transform(source, result);

        } catch (ParserConfigurationException pce) {
            pce.printStackTrace();
        } catch (TransformerException tfe) {
            tfe.printStackTrace();
        }
    }
}