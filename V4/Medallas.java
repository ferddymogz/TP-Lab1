package com.ejemplo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Medallas {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String pais;
    private int oro;
    private int plata;
    private int bronce;

    // Getters y setters
}

