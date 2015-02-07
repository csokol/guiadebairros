package br.com.guiadebairros.model.repository;

import static org.springframework.data.mongodb.core.query.Criteria.where;

import java.util.HashSet;
import java.util.Set;

import javax.inject.Inject;

import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import br.com.guiadebairros.model.Evaluation;
import br.com.guiadebairros.model.Location;

public class LocationRepository {

    private MongoTemplate template;
    
    /**
     * @deprecated
     * CDI eyes only
     */	
    public LocationRepository() {}    
    
    @Inject
    public LocationRepository(MongoTemplate template) {
	this.template = template;
    }
    
    public Set<Location> suggestedLocationsFor(String query, Integer maxResults) {
	return new HashSet<>(this.template.find(new Query(where("searchableNames").regex(query)).limit(maxResults), Location.class));
    }    
    
    public Location get(String id) {
	return this.template.findById(id, Location.class);
    }
    
    public void add(String id, Evaluation evaluation) {
	this.template.updateFirst(new Query(where("_id").is(id)), new Update().push("evaluations", evaluation), Location.class);
    }
    
    public Set<Location> getAll() {
	return new HashSet<>(this.template.findAll(Location.class));
    }
}
