package br.com.guiadebairros.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.guiadebairros.service.LocationService;

@Controller
public class DetailController {

    @Inject private HttpSession session;
    @Inject private Result result;
    @Inject private LocationService service;

    @Get("/detail/{id:[0-9a-f]+}")
    public void detail(String id) {
	this.result.include("location", service.get(id));
	session.setAttribute("desiredLocationId", id);
    }
}
