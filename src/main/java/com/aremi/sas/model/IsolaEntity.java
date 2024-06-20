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
@Table(name = "isola")
public class IsolaEntity {
    @Id
    @GeneratedValue
    @Column(name = "id_isola")
    private Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_sede_lavorativa", referencedColumnName = "id_sede")
    private SedeLavorativaEntity sedeLavorativa;
}
