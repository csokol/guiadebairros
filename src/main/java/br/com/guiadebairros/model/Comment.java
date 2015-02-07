package br.com.guiadebairros.model;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "comments")
public class Comment {

    private String locationId;
    private String text;
    private String author;
    
    public String getLocationId() {
	return locationId;
    }
    public void setLocationId(String locationId) {
	this.locationId = locationId;
    }
    public String getText() {
	return text;
    }
    public void setText(String text) {
	this.text = text;
    }
    public String getAuthor() {
	return author;
    }
    public void setAuthor(String author) {
	this.author = author;
    }
    
}
