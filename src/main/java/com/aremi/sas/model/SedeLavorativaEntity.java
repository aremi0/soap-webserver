package com.aremi.sas.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "sede_lavorativa")
public class SedeLavorativaEntity {
    @Id
    @GeneratedValue
    @Column(name = "id_sede")
    private Long id;

    @OneToOne
    @JoinColumn(name = "id_responsabile_hub", referencedColumnName = "id_dipendente")
    private DipendenteEntity responsabileHub;

    @Column(name = "citta_ubicazione")
    private String citta;

    @Column(name = "indirizzo_ubicazione")
    private String indirizzo;

    @Column(name = "numero_posti_totali")
    private Integer numeroPostiTotali;
}
