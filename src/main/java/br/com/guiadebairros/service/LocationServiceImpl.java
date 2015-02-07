package br.com.guiadebairros.service;

import java.util.Set;

import javax.inject.Inject;

import br.com.guiadebairros.model.Evaluation;
import br.com.guiadebairros.model.Location;
import br.com.guiadebairros.model.repository.LocationRepository;
import br.com.guiadebairros.util.TextualSearch;

public class LocationServiceImpl implements LocationService {

    private static final int MAX_AUTOCOMPLETE_RESULTS = 5;
    private LocationRepository repository;
    private TextualSearch textualSearch;
    
    @Inject
    public LocationServiceImpl(LocationRepository repository, TextualSearch textualSearch) {
	this.repository = repository;
	this.textualSearch = textualSearch;
    }
    
    
    @Override
    public Set<Location> autoCompleteLocations(String query, Integer maxResults) {
	return this.repository.suggestedLocationsFor(textualSearch.prepareForSearch(query), MAX_AUTOCOMPLETE_RESULTS);
    }


    @Override
    public void add(String id, Evaluation evaluation) {
	this.repository.add(id, evaluation);
    }


    @Override
    public Location get(String id) {
	return this.repository.get(id);
    }

    @Override
    public Set<Location> getAll() {
	return this.repository.getAll();
    }

}
