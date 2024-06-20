package com.aremi.sas.mapper;

import com.aremi.sas.model.DipendenteEntity;
import example.infrastructure.sas_simulation_webservice.Dipendente;

public class DipendenteMapper implements EntityMapper {
    private DipendenteMapper() {}
    public static Dipendente toPojo(DipendenteEntity entity) {
        Dipendente dipendente = new Dipendente();
        dipendente.setIdDipendente(entity.getId());
        dipendente.setNome(entity.getNome());
        dipendente.setCognome(entity.getCognome());
        dipendente.setDataDiNascita(EntityMapper.convertToXMLGregorianCalendar(entity.getDataDiNascita().toLocalDateTime()));
        return dipendente;
    }
}
