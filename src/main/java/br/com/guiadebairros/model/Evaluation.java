package br.com.guiadebairros.model;

import java.util.HashMap;
import java.util.Map;

public class Evaluation {
//    private User user;
    private Integer securityScore;
    private Integer publicTransportationScore;
    private Integer amenitiesScore;
    private Integer amusementScore;
    private Integer trafficScore;
    private Integer costOfLifeScore;
    
    private Map<Subject, Object> opinion = new HashMap<>();
    
    public enum Subject {
	FEEL_SAFE,
	WALK,
	IS_QUIET,
	HAS_TREES,
	IS_CLEAN,
	HOW_LONG,
	USE_PUBLIC_TRANSPORTATION,
	GOOD_ASPHALT
    }
    
    public Integer getSecurityScore() {
        return securityScore;
    }
    public void setSecurityScore(Integer securityScore) {
        this.securityScore = securityScore;
    }
    public Integer getPublicTransportationScore() {
        return publicTransportationScore;
    }
    public void setPublicTransportationScore(Integer publicTransportationScore) {
        this.publicTransportationScore = publicTransportationScore;
    }
    public Integer getAmenitiesScore() {
        return amenitiesScore;
    }
    public void setAmenitiesScore(Integer amenitiesScore) {
        this.amenitiesScore = amenitiesScore;
    }
    public Integer getTrafficScore() {
        return trafficScore;
    }
    public void setTrafficScore(Integer trafficScore) {
        this.trafficScore = trafficScore;
    }
    public Integer getCostOfLifeScore() {
	return costOfLifeScore;
    }
    public void setCostOfLifeScore(Integer costOfLifeScore) {
	this.costOfLifeScore = costOfLifeScore;
    }
    public Integer getAmusementScore() {
	return amusementScore;
    }
    public void setAmusementScore(Integer amusementScore) {
	this.amusementScore = amusementScore;
    }
    
    //Tosco
    public Integer getOverall() {
	
	Integer accumulator = 0;
	
	accumulator += neverNull(securityScore);            
	accumulator += neverNull(publicTransportationScore);
	accumulator += neverNull(amenitiesScore);           
	accumulator += neverNull(amusementScore);           
	accumulator += neverNull(trafficScore);             
	accumulator += neverNull(costOfLifeScore);
	
	if (accumulator.equals(0)) return 0;
	
	return Math.round(accumulator / 6); 
		
    }
    
    public Integer neverNull(Integer val) {
	return val != null ? val : 0;
    }
    public Map<Subject, Object> getOpinion() {
	return opinion;
    }
    public void setOpinion(Map<Subject, Object> opinion) {
	this.opinion = opinion;
    }
    
}
