package com.aremi.sas.mapper;

import com.aremi.sas.model.UtenteEntity;
import example.infrastructure.sas_simulation_webservice.Utente;

public class UtenteMapper implements EntityMapper {
    private UtenteMapper() {}

    public static Utente toPojo(UtenteEntity entity) {
        Utente utente = new Utente();
        utente.setEmail(entity.getEmail());
        utente.setPassword(entity.getPassword());
        utente.setAutorita(entity.getAutorita());
        return utente;
    }
}
