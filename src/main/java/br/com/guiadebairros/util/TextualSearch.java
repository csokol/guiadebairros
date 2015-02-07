package br.com.guiadebairros.util;

import java.text.Normalizer;
import java.text.Normalizer.Form;

public class TextualSearch {
    
	public String prepareForSearch(String text) {
		return text == null ? null
				: Normalizer.normalize(text, Form.NFD)
				.replaceAll("\\p{InCombiningDiacriticalMarks}+", "").toLowerCase().trim();
	}
	
}
