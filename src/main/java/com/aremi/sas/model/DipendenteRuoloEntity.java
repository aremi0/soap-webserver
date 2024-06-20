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
@Table(name = "dipendente_ruolo")
public class DipendenteRuoloEntity {
    @Id
    @Column(name = "id_dipendente", nullable = false)
    private Long id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_dipendente", nullable = false)
    private DipendenteEntity dipendente;

    @Column(name = "settore") // Back-End || Dev-Ops || Data-Analyst || AI-Specialist
    private String settore;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ruolo")
    private RuoloEntity ruolo;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_sede_lavorativa", referencedColumnName = "id_sede")
    private SedeLavorativaEntity sedeLavorativa;
}
