package gr.hua.dit.client.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class ClientController {

	public static final String userAgent = "Mozilla/5.0";

	@GetMapping("/signIn")
	public String signInPage() {
		return "signIn";
	}

	@PostMapping("/saveCustomer")
	public String saveCustomer(HttpServletRequest request) {
		// send a post request to Intranet application to create a new user
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		int afm = Integer.valueOf(request.getParameter("afm"));
		int releaseYear = Integer.valueOf(request.getParameter("releaseYear"));
		String location = request.getParameter("location");
		String plate = request.getParameter("plate");
		String condition = request.getParameter("condition");
		String url = "http://localhost:8080/Intranet/api/client/add?firstName=" + firstName + "&lastName=" + lastName
				+ "&afm=" + afm + "&location=" + location + "&plate=" + plate + "&condition=" + condition + "&releaseYear=" + releaseYear;

		try {
			Jsoup.connect(url).userAgent(userAgent).ignoreContentType(true).post();

		} catch (org.jsoup.HttpStatusException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:/";
	}

	@GetMapping("/progress")
	public String carProgress() {
		return "progress";
	}

	@GetMapping("/vehicle")
	public String getCar(HttpServletRequest request, Model model) {
		// send a get request to Intranet application to find car's state and get the certificate if available
		String plate = request.getParameter("plate");
		String url = "http://localhost:8080/Intranet/api/client/car/"+plate;
		
		try {
			Document doc = Jsoup.connect(url).userAgent(userAgent).ignoreContentType(true).get();
			String responseText = doc.text();
			JSONParser parser = new JSONParser();
			JSONObject jsonObject = (JSONObject) parser.parse(responseText);
			// get car's plate if null means car doesn't exist or the bonus hasn't been calculated
			String vPlate = (String) jsonObject.get("plate");
			if(vPlate != null) {
				model.addAttribute("plate", jsonObject.get("plate"));
				model.addAttribute("model", jsonObject.get("model"));
				model.addAttribute("vehicleCondition", jsonObject.get("vehicleCondition"));
				return "certificate";
			}else {
				return "redirect:/progress";
			}

		} catch (org.jsoup.HttpStatusException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// car is null
		} catch (IOException e) {
			e.printStackTrace();
		}

		return "redirect:/progress";

	}

}
