package br.com.guiadebairros.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;

@Controller
public class DetailController {

    @Inject
    private HttpSession session;

    @Get("/detail/{id:[0-9a-f]+}")
    public void detail(String id) {
	session.setAttribute("desiredLocationId", id);
    }
}
