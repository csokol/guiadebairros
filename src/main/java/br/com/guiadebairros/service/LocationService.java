package br.com.guiadebairros.service;

import java.util.Set;

import br.com.guiadebairros.model.Evaluation;
import br.com.guiadebairros.model.Location;

public interface LocationService {

    Set<Location> autoCompleteLocations(String query, Integer maxResults);
    
    void add(String id, Evaluation evaluation);
    
    Location get(String id);
    
    Set<Location> getAll();
    
}
