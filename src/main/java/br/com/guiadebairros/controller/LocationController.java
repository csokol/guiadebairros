package br.com.guiadebairros.controller;

import static br.com.caelum.vraptor.view.Results.http;
import static br.com.caelum.vraptor.view.Results.json;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.guiadebairros.model.Evaluation;
import br.com.guiadebairros.model.repository.fake.Locations;
import br.com.guiadebairros.service.LocationService;

@Controller
@Path("/location")
public class LocationController {

	private Result result;
	private LocationService locationService;
	private HttpSession session;

	/**
	 * @deprecated
	 * CDI eyes only
	 */
	public LocationController() {}
	
	@Inject
	public LocationController(Result result, LocationService locationService, HttpSession session) {
		this.result = result;
		this.locationService = locationService;
		this.session = session;
	}

	@Get("/autocomplete")
	public void autocomplete(String query, Integer maxResults) {
		if (query != null && !query.trim().isEmpty()) {
			this.result.use(json())
				.withoutRoot()
				.from(this.locationService.autoCompleteLocations(query.trim(), maxResults))
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
	
	@Post("/evaluate/{id}")
	public void add(String id, Evaluation evaluation) {
	    this.locationService.add(id, evaluation);
	    this.result.redirectTo(DetailController.class).detail((String)this.session.getAttribute("desiredLocationId"));
	}
    
}
