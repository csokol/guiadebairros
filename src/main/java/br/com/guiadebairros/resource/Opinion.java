package br.com.guiadebairros.resource;

import br.com.guiadebairros.model.Evaluation.Subject;

public class Opinion {

    private Subject subject;
    private Boolean value;
    private Integer intValue;
    
    public Subject getSubject() {
	return subject;
    }
    public void setSubject(Subject subject) {
	this.subject = subject;
    }
    
    public Boolean getValue() {
	return value;
    }
    public void setValue(Boolean value) {
	this.value = value;
    }
    public Integer getIntValue() {
	return intValue;
    }
    public void setIntValue(Integer intValue) {
	this.intValue = intValue;
    }
    
}
