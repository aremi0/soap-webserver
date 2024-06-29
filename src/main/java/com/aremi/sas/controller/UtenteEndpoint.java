package com.aremi.sas.controller;

import com.aremi.sas.service.UtenteService;
import example.infrastructure.sas_simulation_webservice.GetUtenteByEmailRequest;
import example.infrastructure.sas_simulation_webservice.GetUtenteResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import java.util.logging.Logger;

@Endpoint
public class UtenteEndpoint {
    private static final String NAMESPACE_URI = "http://example/infrastructure/sas-simulation-webservice";
    private final Logger logger;
    private final UtenteService utenteService;

    @Autowired
    public UtenteEndpoint(UtenteService utenteService) {
        logger = Logger.getLogger("UtenteEndpoint_Logger");
        this.utenteService = utenteService;
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getUtenteByEmailRequest")
    @ResponsePayload
    public GetUtenteResponse getUtenteByEmailRequest(@RequestPayload GetUtenteByEmailRequest request) {
        logger.info("UtenteEndpoint::getUtenteByEmailRequest SOAP request received with userEmail: " + request.getEmailUtente());
        return utenteService.getUtenteByEmail(request);
    }
}
