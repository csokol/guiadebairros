package br.com.guiadebairros.controller;

import static br.com.caelum.vraptor.view.Results.http;
import static br.com.caelum.vraptor.view.Results.json;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.data.mongodb.core.MongoTemplate;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.guiadebairros.model.Comment;
import br.com.guiadebairros.model.Evaluation;
import br.com.guiadebairros.model.Evaluation.Subject;
import br.com.guiadebairros.model.Location;
import br.com.guiadebairros.model.repository.fake.Locations;
import br.com.guiadebairros.resource.Opinion;
import br.com.guiadebairros.service.LocationService;
import br.com.guiadebairros.util.TextualSearch;

@Controller
@Path("/location")
public class LocationController {

	private Result result;
	private LocationService locationService;
	private HttpSession session;
	private MongoTemplate template;
	private TextualSearch textualSearch;

	/**
	 * @deprecated
	 * CDI eyes only
	 */
	public LocationController() {}
	
	@Inject
	public LocationController(Result result, LocationService locationService, HttpSession session,
		MongoTemplate template, TextualSearch textualSearch) {
		this.result = result;
		this.locationService = locationService;
		this.session = session;
		this.template = template;
		this.textualSearch = textualSearch;
	}

	@Get("/autocomplete")
	public void autocomplete(String query, Integer maxResults) {
		if (query != null && !query.trim().isEmpty()) {
			this.result.use(json())
				.withoutRoot()
				.from(this.locationService.autoCompleteLocations(this.textualSearch.prepareForSearch(query), maxResults))
				.serialize();
		} else {
			this.result.use(http()).sendError(400);
		}
	}
	
	@Get("/loadAllFuckingLocations")
	public void loadAllFuckingLocations() {
	    new Locations();
	    this.result.nothing();
	}
	
	
	@Get("/xablau")
	public void xablau() {
	    List<String> descriptions = Arrays.asList("Este bairro é muito maneiro. Todo mundo adora este bairro",
		    "As pessoas tem medo deste bairro. É pior que Gotham City.",
		    "Melhor que este bairro, só Osasco!",
		    "Um bairro muito bonito, limpo, repleto de gente diferenciada e elegante.");
	    
	    
	    Set<Location> locations = this.locationService.getAll();
	    for(Location location: locations) {
		location.setDescription(descriptions.get(new Random().nextInt(descriptions.size()-1)));
		this.template.save(location);
	    }
	    
	    this.result.nothing();
	}	
	
	
	
	@Post("/evaluate/{id}")
	public void add(String id, Evaluation evaluation, List<Opinion> opinions, Comment comment) {
	    evaluation.setOpinion(this.assembleOpinionMap(opinions));
	    this.locationService.add(id, evaluation);
	    comment.setLocationId(id);
	    this.template.save(comment);
	    this.session.setAttribute("canRead", true);
		String desiredLocationUrl = (String) this.session.getAttribute("desiredLocationUrl");
		this.result.redirectTo(DetailController.class).detail(desiredLocationUrl);
	}
	
	@Get("/clean")
	public void clean() {
	    this.session.invalidate();
	    this.result.nothing();
	}	

	private Map<Subject, Object> assembleOpinionMap(List<Opinion> opinions) {
	    
	    Map<Subject, Object> opinionMap = new HashMap<>();
	    
	    for (Opinion opinion: opinions) {
		Object value = null;
		if (opinion.getSubject().equals(Subject.TIME_TO_WORK)) {
		    value = opinion.getIntValue();			
		} else {
		    value = opinion.getValue();
		}
		opinionMap.put(opinion.getSubject(), value);
	    }
	    
	    return opinionMap;
	}
    
}
