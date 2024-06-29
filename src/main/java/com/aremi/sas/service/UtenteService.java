package com.aremi.sas.service;

import com.aremi.sas.mapper.UtenteMapper;
import com.aremi.sas.model.UtenteEntity;
import com.aremi.sas.repository.UtenteRepository;
import example.infrastructure.sas_simulation_webservice.GenericResponse;
import example.infrastructure.sas_simulation_webservice.GetUtenteByEmailRequest;
import example.infrastructure.sas_simulation_webservice.GetUtenteResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.logging.Logger;

@Service
public class UtenteService {
    private final Logger logger;
    private final UtenteRepository utenteRepository;

    @Autowired
    public UtenteService(UtenteRepository utenteRepository) {
        logger = Logger.getLogger("UtenteService_Logger");
        this.utenteRepository = utenteRepository;
    }


    public GetUtenteResponse getUtenteByEmail(GetUtenteByEmailRequest request) {
        GetUtenteResponse response = new GetUtenteResponse();
        GenericResponse gn = new GenericResponse();

        logger.info("UtenteService::getUtenteByEmail service started...");

        Optional<UtenteEntity> opt = utenteRepository.findById(request.getEmailUtente());

        if (opt.isPresent()) {
            logger.info("UtenteService::getUtenteByEmail success!");
            response.setUtente(UtenteMapper.toPojo(opt.get()));
            gn.setEntitiesNumber(1);
            gn.setHttpCode(200);
            gn.setDescription("Success");

            response.setResponseDetail(gn);
        } else {
            logger.info("UtenteService::getUtenteByEmail not found!");
            gn.setEntitiesNumber(0);
            gn.setHttpCode(404);
            gn.setDescription("Not found");
            response.setResponseDetail(gn);
        }
        return response;
    }
}
