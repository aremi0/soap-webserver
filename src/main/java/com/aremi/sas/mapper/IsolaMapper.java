package com.aremi.sas.mapper;

import com.aremi.sas.model.IsolaEntity;
import example.infrastructure.sas_simulation_webservice.Isola;

public class IsolaMapper implements EntityMapper {
    private IsolaMapper() {}

    public static Isola toPojo(IsolaEntity entity) {
        Isola isola = new Isola();
        isola.setIdIsola(entity.getId());
        isola.setSedeLavorativa(SedeLavorativaMapper.toPojo(entity.getSedeLavorativa()));

        return isola;
    }
}
