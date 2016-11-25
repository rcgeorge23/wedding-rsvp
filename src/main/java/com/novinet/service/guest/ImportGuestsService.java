package com.novinet.service.guest;

import static org.slf4j.LoggerFactory.getLogger;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.slf4j.Logger;
import org.springframework.stereotype.Service;

import com.novinet.repository.dataimport.DataImport;

@Service
public class ImportGuestsService {
	private static final Logger log = getLogger(ImportGuestsService.class);
	
	public DataImport importBytes(byte[] bytes) {
		try {
			File file = File.createTempFile("rsvp", "import");
			BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
			stream.write(bytes);
			stream.close();
		} catch (Exception e) {
			log.error("Error writing uploaded file to filesystem", e);
			throw new RuntimeException(e);
		}
		
		return new DataImport();
	}
}
