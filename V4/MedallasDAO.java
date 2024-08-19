package com.ejemplo.dao;

import com.ejemplo.model.Medallas;
import org.springframework.data.repository.CrudRepository;

public interface MedallasDAO extends CrudRepository<Medallas, Long> {
}

