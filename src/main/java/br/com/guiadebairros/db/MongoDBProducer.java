package br.com.guiadebairros.db;

import java.net.UnknownHostException;

import javax.enterprise.context.ApplicationScoped;
import javax.enterprise.inject.Produces;

import org.springframework.data.mongodb.MongoDbFactory;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.SimpleMongoDbFactory;

import com.mongodb.Mongo;
import com.mongodb.MongoClient;

@ApplicationScoped
public class MongoDBProducer {
    private static final String GUIA_DE_BAIRROS = "guiaDeBairros";

    private static MongoTemplate mongoTemplate;
    
    @Produces
    public Mongo getMongo() {
	try {
	    return new MongoClient();
	} catch (UnknownHostException e) {
	    throw new RuntimeException("Error trying to create Mongo object...", e);
	} 
    }

    @Produces
    public MongoTemplate getMongoTemplate() {
	if (mongoTemplate != null) return mongoTemplate;
	
	mongoTemplate = new MongoTemplate(getMongoFactory());
	
	return mongoTemplate;
    }


    @Produces
    public MongoDbFactory getMongoFactory() {
	return new SimpleMongoDbFactory(this.getMongo(), GUIA_DE_BAIRROS);
    }
}
