package br.com.guiadebairros.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.guiadebairros.model.Location;
import br.com.guiadebairros.service.LocationService;

@Controller
public class DetailController {

    @Inject private HttpSession session;
    @Inject private Result result;
    @Inject private LocationService service;

    @Get("/detail/{id:[0-9a-f]+}")
    public void detail(String id) {
	this.prepareDataFor(service.get(id));
	session.setAttribute("desiredLocationId", id);
    }

    private void prepareDataFor(Location location) {
	this.result.include("location", location);
	
//	this.result.include("securityScore", location.getSecurityScore());
//	this.result.include("publicTransportationScore", location.getPublicTransportationScore());
//	this.result.include("amenitiesScore", location.getAmenitiesScore());
//	this.result.include("amusementScore", location.getAmusementScore());
//	this.result.include("trafficScore", location.getTrafficScore());
//	this.result.include("costOfLifeScore", location.getCostOfLifeScore());          
	
    }
}
