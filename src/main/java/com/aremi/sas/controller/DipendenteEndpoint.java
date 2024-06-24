package com.aremi.sas.controller;

import com.aremi.sas.mapper.DipendenteMapper;
import com.aremi.sas.model.DipendenteEntity;
import com.aremi.sas.repository.DipendenteRepository;
import com.aremi.sas.service.DipendenteService;
import example.infrastructure.sas_simulation_webservice.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import java.util.List;
import java.util.logging.Logger;

@Endpoint
public class DipendenteEndpoint {
    private static final String NAMESPACE_URI = "http://example/infrastructure/sas-simulation-webservice";
    private final Logger logger = Logger.getLogger("DipendenteEndpoint_Logger");
    private final DipendenteService dipendenteService;

    @Autowired
    public DipendenteEndpoint(DipendenteService dipendenteService) {
        this.dipendenteService = dipendenteService;
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getDipendenteRequest")
    @ResponsePayload
    public GetDipendenteResponse getDipendenteById(@RequestPayload GetDipendenteRequest request) {
        logger.info("DipendenteEndpoint::getDipendenteById SOAP request received with ID: " + request.getId());
        return dipendenteService.getDipendenteById(request);
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getDipendentiByIdSedeRequest")
    @ResponsePayload
    public GetDipendentiByIdSedeResponse getDipendentiByIdSede(@RequestPayload GetDipendentiByIdSedeRequest request) {
        logger.info("DipendenteEndpoint::getDipendentiByIdSedeResponse SOAP request received with ID: " + request.getIdSede());
        return dipendenteService.getDipendentiByIdSede(request);
    }
}
