package br.com.guiadebairros.model.repository.fake;

import java.util.HashSet;
import java.util.Set;

import javax.enterprise.context.ApplicationScoped;

import org.springframework.data.mongodb.core.MongoTemplate;

import br.com.guiadebairros.db.MongoDBProducer;
import br.com.guiadebairros.model.Location;
import br.com.guiadebairros.util.TextualSearch;

@ApplicationScoped
public class Locations extends HashSet<Location> {

    private static final long serialVersionUID = 1L;
    private MongoTemplate template;
    private TextualSearch textualSearch;


    public Locations() {
	this.template = new MongoDBProducer().getMongoTemplate();//gambeta. fuck that shit
	this.textualSearch = new TextualSearch();
	this.add(createLocation("Vila Mariana"));
	this.add(createLocation("Vila Madalena"));
	this.add(createLocation("Butantã"));
	this.add(createLocation("Pinheiros"));
	this.add(createLocation("Perdizes"));
	this.add(createLocation("Saúde"));
	this.add(createLocation("Liberdade"));
	this.add(createLocation("Copacabana"));
	this.add(createLocation("Leblon"));
	this.add(createLocation("Flamengo"));
	this.add(createLocation("Barra da tijuca"));
	this.add(createLocation("Itaquera"));
    }


    private Location createLocation(String name) {
		Location location = new Location();
		location.setName(name);
		location.setImagePath();
		location.setUrl(this.textualSearch.prepareForSearch(name).replace(" ", "-"));
		location.getSearchableNames().add(this.textualSearch.prepareForSearch(name));

		this.template.save(location);

		return location;
    }
    
    public Set<Location> filterByQuery(String query, Integer maxResults) {
	Set<Location> filteredLocations = new HashSet<Location>();
	
	for(Location location : this) {
	    if (location.getName().toLowerCase().contains(query.toLowerCase())
		    && filteredLocations.size() < maxResults) {
		filteredLocations.add(location);
	    }
	}
	    
	return filteredLocations;
    }
    
    
}
