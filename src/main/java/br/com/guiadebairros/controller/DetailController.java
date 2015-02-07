package br.com.guiadebairros.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.Path;
import org.springframework.data.mongodb.core.MongoTemplate;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.guiadebairros.model.Comment;
import br.com.guiadebairros.service.LocationService;

@Controller
public class DetailController {

    @Inject private HttpSession session;
    @Inject private Result result;
    @Inject private LocationService service;
    @Inject private MongoTemplate template;

	@Path(value="/detail/{url}", priority = Path.LOWEST)
    @Get()
    public void detail(String url) {
	this.result.include("location", service.getByUrl(url));
	session.setAttribute("desiredLocationUrl", url);
	List<Comment> comments = this.template.findAll(Comment.class);
	this.result.include("comments", comments.size() <= 10 ? comments : comments.subList(0, 9));
    }

}
