package norsys.technomaker.xml.parser;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.jdom.Document;
import org.jdom.input.SAXBuilder;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;

/**
 * Classe de parcours du fichier XML pour construire l'affichage HTML.
 */
public final class MonParseurXml {

	/**
	 * Constructeur.
	 */
	private MonParseurXml() {
	}

	/**
	 * Cree le corps de la page HTML de la page a partir du fichier XML qui
	 * 
	 * @param document
	 *            fichier XML a parser.
	 * @return String contenant le code HTML de la page avec les donnees du
	 *         fichier XML.
	 * @throws IOException
	 * @throws JDOMException
	 */
	public static String creerCorpsPageHtml(Document document)
			throws JDOMException, IOException {

		StringBuilder builder = new StringBuilder();
		builder.append("<html>");
		builder.append("<body>");

		builder.append("<h1>Parseur XML</h1>");

		// TODO Continuez ici...

		File xmlFile = new File(
				"src\\main\\resources\\xml\\donnees-messages.xml");

		SAXBuilder builder2 = new SAXBuilder();
		Document document2 = builder2.build(xmlFile);

		builder.append("<b>Liste des messages ...</b>");

		builder.append("<table border='1' align='center'><tr>");
		builder.append("<td>Auteur</td>");
		builder.append("<td>Date</td>");
		builder.append("<td>Contenu</td>");
		builder.append("</tr>");

		// System.out.println("liste des message : \n");

		// Dans un premier temps on liste tous les messages
		List listemessages = document.getRootElement().getChildren("message");
		Iterator i = listemessages.iterator();
		// On parcours la liste grâce à un iterator
		while (i.hasNext()) {
			Element message = (Element) i.next();

			String contenumessages = message.getValue();
			String auteur = message.getChild("auteur").getText();
			String date = message.getChild("date").getText();
			String contenu = message.getChild("contenu").getText();

			builder.append("<tr>");

			builder.append("<td>" + auteur + "</td>");
			builder.append("<td>" + date + "</td>");
			builder.append("<td>" + contenu + "</td>");
			/**
			 * System.out.println("Acteur : "+auteur+"\n");
			 * System.out.println("Date du message : "+date+"\n");
			 * System.out.println("Contenu du message : "+contenu+"\n");
			 * System.out.println("-------------------------------------\n");
			 */

			builder.append("</tr>");
		}
		builder.append("</table>");

		builder.append("</body>");
		builder.append("</html>");

		return builder.toString();
	}
}
