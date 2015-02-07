package br.com.guiadebairros.model;

import java.util.List;

public class Location {
    private String id;
    private String name;
    
    private List<Evaludation> evaluations;

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

    public List<Evaludation> getEvaluations() {
	return evaluations;
    }

    public void setEvaluations(List<Evaludation> evaluations) {
	this.evaluations = evaluations;
    }

}
