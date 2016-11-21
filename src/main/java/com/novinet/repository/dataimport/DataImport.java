package com.novinet.repository.dataimport;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class DataImport {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@OneToMany(mappedBy="dataImport")
	List<Row> rows;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Row> getRows() {
		return rows;
	}

	protected void setRows(List<Row> rows) {
		this.rows = rows;
	}
	
    public void addRow(Row row) {
        this.rows.add(row);
        if (row.getDataImport() != this) {
        	row.setDataImport(this);
        }
    }
}
