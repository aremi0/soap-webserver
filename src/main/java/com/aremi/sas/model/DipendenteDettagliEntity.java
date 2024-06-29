package com.aremi.sas.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "dipendente_dettagli")
public class DipendenteDettagliEntity implements Serializable {
    @Id
    @Column(name = "id_dipendente", nullable = false)
    private Long id;

    @MapsId
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "id_dipendente", nullable = false)
    private DipendenteEntity dipendente;

    @Column(name = "citta_ubicazione")
    private String citta;

    @Column(name = "email")
    private String email;

    @Column(name = "indirizzo_ubicazione")
    private String indirizzo;

    @Column(name = "numero_telefonico")
    private String numeroTelefonico;

    @Column(name = "sesso")
    private String sesso;
}
