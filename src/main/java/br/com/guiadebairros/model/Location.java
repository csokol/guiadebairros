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
    private Set<String> searchableNames = new HashSet<>();
    
    private List<Evaluation> evaluations;

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

}
