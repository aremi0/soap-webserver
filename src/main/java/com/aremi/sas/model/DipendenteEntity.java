package com.aremi.sas.model;

import jakarta.persistence.*;
import lombok.*;

import java.io.Serializable;
import java.sql.Timestamp;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "dipendente")
public class DipendenteEntity implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "id_dipendente")
    private Long id;

    @Column(name = "nome")
    private String nome;

    @Column(name = "cognome")
    private String cognome;

    @Column(name = "data_di_nascita")
    private Timestamp dataDiNascita;
}