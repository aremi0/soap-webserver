package com.aremi.sas.service;

import com.aremi.sas.mapper.DipendenteMapper;
import com.aremi.sas.model.DipendenteEntity;
import com.aremi.sas.repository.DipendenteRepository;
import example.infrastructure.sas_simulation_webservice.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.logging.Logger;

@Service
public class DipendenteService {
    private final Logger logger = Logger.getLogger("DipendenteService_Logger");
    private final DipendenteRepository dipendenteRepository;

    @Autowired
    public DipendenteService(DipendenteRepository dipendenteRepository) {
        this.dipendenteRepository = dipendenteRepository;
    }

    public GetDipendenteResponse getDipendenteById(GetDipendenteRequest request) {
        GetDipendenteResponse response = new GetDipendenteResponse();
        GenericResponse gn = new GenericResponse();

        logger.info("DipendenteService::getDipendenteById service started...");

        Optional<DipendenteEntity> opt = dipendenteRepository.findById(request.getId());

        if (opt.isPresent()) {
            logger.info("DipendenteService::getDipendenteById success!");
            response.setDipendente(DipendenteMapper.toPojo(opt.get()));
            gn.setEntitiesNumber(1);
            gn.setHttpCode(200);
            gn.setDescription("Success");

            response.setResponseDetail(gn);
        }
        else {
            logger.info("DipendenteService::getDipendenteById not found!");
            gn.setEntitiesNumber(0);
            gn.setHttpCode(404);
            gn.setDescription("Not found");
            response.setResponseDetail(gn);
        }
        return response;
    }

    public GetDipendentiByIdSedeResponse getDipendentiByIdSede(GetDipendentiByIdSedeRequest request) {
        GetDipendentiByIdSedeResponse response = new GetDipendentiByIdSedeResponse();
        GenericResponse gn = new GenericResponse();

        logger.info("DipendenteService::getDipendenteById service started...");

        List<DipendenteEntity> opt = dipendenteRepository.findDipendenteEntitiesByIdSede(request.getId());

        if(!opt.isEmpty()) {
            logger.info("DipendenteService::getDipendentiByIdSede oggetto trovato");
            gn.setEntitiesNumber(opt.size());
            gn.setHttpCode(200);
            gn.setDescription("Success");

            response.setResponseDetail(gn);

            for (var entry : opt) {
                response.getDipendenti().add(DipendenteMapper.toPojo(entry));
            }

        } else {
            logger.info("DipendenteService::getDipendentiByIdSede oggetto NON trovato");
            gn.setEntitiesNumber(0);
            gn.setHttpCode(404);
            gn.setDescription("Not found");
            response.setResponseDetail(gn);
        }
        return response;
    }
}
