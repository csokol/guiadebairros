package br.com.guiadebairros.model;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "locations")
public class Location {
    
    @Id
    private String id;
    private String name;
    private String description;
    private Set<String> searchableNames = new HashSet<>();
    
    private List<Evaluation> evaluations;
    
    private enum Feature {
	SECURITY,
	PUBLIC_TRANSPORTATION,
        AMENITIES,
	AMUSEMENT,
	TRAFFIC,
        COST_OF_LIFE
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Evaluation> getEvaluations() {
	return evaluations;
    }

    public void setEvaluations(List<Evaluation> evaluations) {
	this.evaluations = evaluations;
    }

    public Set<String> getSearchableNames() {
	return searchableNames;
    }

    public void setSearchableNames(Set<String> searchableNames) {
	this.searchableNames = searchableNames;
    }
    
    public boolean equals(Object object) {
	Location location = (Location) object;
	return this.id.equals(location.getId());
    }

    public String getDescription() {
	return description;
    }

    public void setDescription(String description) {
	this.description = description;
    }
    
    public Integer getSecurityScore() {
        return avg(Feature.SECURITY);
    }

    public Integer getPublicTransportationScore() {
        return avg(Feature.PUBLIC_TRANSPORTATION);
    }
    
    public Integer getAmenitiesScore() {
        return avg(Feature.AMENITIES);
    }
    public Integer getTrafficScore() {
        return avg(Feature.TRAFFIC);
    }
    public Integer getCostOfLifeScore() {
	return avg(Feature.COST_OF_LIFE);
    }
    public Integer getAmusementScore() {
	return avg(Feature.AMUSEMENT);
    }
    
    private Integer avg(Feature feature) {
	
	if (evaluations == null || evaluations.isEmpty()) return 0;
	
	Integer accumulator = 0;
	for(Evaluation evaluation : evaluations) {
	    switch (feature) {
	    case SECURITY:
		accumulator += evaluation.getSecurityScore();
		break;
	    case PUBLIC_TRANSPORTATION:
		accumulator += evaluation.getPublicTransportationScore();
		break;
	    case AMENITIES:
		accumulator += evaluation.getAmenitiesScore();
		break;         
	    case AMUSEMENT:
		accumulator += evaluation.getAmusementScore();
		break;         
	    case TRAFFIC:
		accumulator += evaluation.getTrafficScore();
		break;         
	    case COST_OF_LIFE:
		accumulator += evaluation.getCostOfLifeScore();
		break;      
	    }
	}
	
	return Math.round(accumulator / evaluations.size());
    }
    
    public Integer getOverallScore() {
	Integer accumulator = 0;
	if (evaluations == null || evaluations.isEmpty()) return 0;
	for(Evaluation evaluation : evaluations) {
	    accumulator += evaluation.getOverall();
	}
	
	return Math.round(accumulator / evaluations.size());
    }
    
    
}
