package com.novinet.service.guest;

import static org.slf4j.LoggerFactory.getLogger;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.CellValue;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
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
			Workbook workbook = WorkbookFactory.create(file);
			Sheet sheet = workbook.getSheetAt(0);
			DataImport dataImport = new DataImport();
			
			sheet.iterator().forEachRemaining(poiRow -> {
				poiRow.cellIterator().forEachRemaining(poiCell -> {
					String value = getCellValue(poiCell);
				});
			});
		} catch (Exception e) {
			log.error("Error writing uploaded file to filesystem", e);
			throw new RuntimeException(e);
		}
		
		return new DataImport();
	}

	@SuppressWarnings("deprecation")
	private String getCellValue(Cell poiCell) {
		CellType cellType = poiCell.getCellTypeEnum();
		
		FormulaEvaluator evaluator = poiCell.getRow().getSheet().getWorkbook().getCreationHelper().createFormulaEvaluator();
		CellValue cellValue = evaluator.evaluate(poiCell);
		
		switch(cellType) {
			case STRING:
				return cellValue.getStringValue();
			case NUMERIC:
				return String.valueOf(cellValue.getNumberValue());
			case BOOLEAN:
				return String.valueOf(cellValue.getBooleanValue());
			default:
				return "";
		}
	}
}
