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
@Table(name = "utente")
public class UtenteEntity implements Serializable {
    @Id
    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @Column(name = "autorita")
    private String autorita;

    @OneToOne
    @JoinColumn(name = "email", referencedColumnName = "email")
    private DipendenteDettagliEntity dipendenteDettagli;
}
