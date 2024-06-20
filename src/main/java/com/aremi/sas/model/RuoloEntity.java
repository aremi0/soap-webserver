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
@Table(name = "ruolo")
public class RuoloEntity {
    @Id
    @GeneratedValue
    @Column(name = "id_ruolo")
    private Long idRuolo;

    @Column(name = "posizione")
    private String posizione;
}
