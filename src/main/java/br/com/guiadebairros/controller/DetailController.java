package br.com.guiadebairros.controller;

import static org.springframework.data.mongodb.core.query.Criteria.where;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;
import br.com.guiadebairros.model.Comment;
import br.com.guiadebairros.model.Location;
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
	Location location = service.getByUrl(url);
	this.result.include("location", location);
	session.setAttribute("desiredLocationUrl", url);
	List<Comment> comments = this.template.find(new Query(where("locationId").is(location.getId())), Comment.class);
	this.result.include("comments", comments.size() <= 10 ? comments : comments.subList(0, 9));
    }

}
