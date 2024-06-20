package com.aremi.sas.mapper;

import com.aremi.sas.model.SedeLavorativaEntity;
import example.infrastructure.sas_simulation_webservice.SedeLavorativa;

public class SedeLavorativaMapper implements EntityMapper {
    private SedeLavorativaMapper() {}
    public static SedeLavorativa toPojo(SedeLavorativaEntity entity) {
        SedeLavorativa sedeLavorativa = new SedeLavorativa();
        sedeLavorativa.setIdSede(entity.getId());
        sedeLavorativa.setResponsabileHub(DipendenteMapper.toPojo(entity.getResponsabileHub()));
        sedeLavorativa.setCittaUbicazione(entity.getCitta());
        sedeLavorativa.setIndirizzoUbicazione(entity.getIndirizzo());
        sedeLavorativa.setNumeroPostiTotali(entity.getNumeroPostiTotali());

        return sedeLavorativa;
    }
}
