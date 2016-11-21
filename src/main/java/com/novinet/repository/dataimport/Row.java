package com.novinet.repository.dataimport;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Row {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	private DataImport dataImport;
	
	@OneToMany(mappedBy="row")
	private List<Cell> cells;

	public Long getId() {
		return id;
	}
	
	public List<Cell> getCells() {
		return cells;
	}

	public void setCells(List<Cell> cells) {
		this.cells = cells;
	}

	public DataImport getDataImport() {
		return dataImport;
	}

	public void setDataImport(DataImport dataImport) {
		this.dataImport = dataImport;
	}
	
    public void addCell(Cell cell) {
        this.cells.add(cell);
        if (cell.getRow() != this) {
        	cell.setRow(this);
        }
    }
}
