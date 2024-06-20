package com.aremi.sas.controller;

import com.aremi.sas.mapper.DipendenteMapper;
import com.aremi.sas.mapper.SedeLavorativaMapper;
import com.aremi.sas.model.DipendenteEntity;
import com.aremi.sas.model.SedeLavorativaEntity;
import com.aremi.sas.repository.CountryRepository;
import com.aremi.sas.repository.DipendenteRepository;
import com.aremi.sas.repository.IsolaRepository;
import com.aremi.sas.repository.SedeLavorativaRepository;
import example.infrastructure.sas_simulation_webservice.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

import java.util.List;
import java.util.Optional;
import java.util.logging.Logger;

@Endpoint
public class MainEndpoint {
    private static final String NAMESPACE_URI = "http://example/infrastructure/sas-simulation-webservice";
    private final Logger logger = Logger.getLogger("EndpointLogger");
    private final CountryRepository countryRepository;
    private final DipendenteRepository dipendenteRepository;
    private final SedeLavorativaRepository sedeLavorativaRepository;
    private final IsolaRepository isolaRepository;

    @Autowired
    public MainEndpoint(CountryRepository countryRepository,
                        DipendenteRepository dipendenteRepository,
                        SedeLavorativaRepository sedeLavorativaRepository,
                        IsolaRepository isolaRepository) {
        this.countryRepository = countryRepository;
        this.dipendenteRepository = dipendenteRepository;
        this.sedeLavorativaRepository = sedeLavorativaRepository;
        this.isolaRepository = isolaRepository;
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getCountryRequest")
    @ResponsePayload
    public GetCountryResponse getCountry(@RequestPayload GetCountryRequest request) {
        GetCountryResponse response = new GetCountryResponse();
        response.setCountry(countryRepository.findCountry(request.getName()));

        return response;
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getDipendenteRequest")
    @ResponsePayload
    public GetDipendenteResponse getDipendenteById(@RequestPayload GetDipendenteRequest request) {
        GetDipendenteResponse response = new GetDipendenteResponse();
        logger.info("MainEndpoint ID: " + request.getId());
        Optional<DipendenteEntity> opt = dipendenteRepository.findById(request.getId());
        if (opt.isPresent()) {
            logger.info("MainEndpoint oggetto trovato");
            response.setDipendente(DipendenteMapper.toPojo(opt.get()));
        }
        else {
            logger.info("MainEndpoint NON oggetto trovato");
            response.setDipendente(null);
        }
        return response;
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getSedeLavorativaRequest")
    @ResponsePayload
    public GetSedeLavorativaResponse getSedeLavorativaById(@RequestPayload GetSedeLavorativaRequest request) {
        GetSedeLavorativaResponse response = new GetSedeLavorativaResponse();
        GenericResponse gn = new GenericResponse();

        logger.info("MainEndpoint ID: " + request.getId());

        Optional<SedeLavorativaEntity> opt = sedeLavorativaRepository.findById(request.getId());

        if(opt.isPresent()) {
            logger.info("MainEndpoint oggetto trovato");
            gn.setEntitiesNumber(1);
            gn.setHttpCode(200);
            gn.setDescription("Success");

            response.setResponseDetail(gn);
            response.getSedeLavorativa().add(SedeLavorativaMapper.toPojo(opt.get()));

        } else {
            logger.info("MainEndpoint NON oggetto trovato");
            gn.setEntitiesNumber(0);
            gn.setHttpCode(404);
            gn.setDescription("Not found");
            response.setResponseDetail(gn);
        }
        return response;
    }

    @PayloadRoot(namespace = NAMESPACE_URI, localPart = "GetDipendentiByIdSedeRequest")
    @ResponsePayload
    public GetDipendentiByIdSedeResponse getDipendentiByIdSede(@RequestPayload GetDipendentiByIdSedeRequest request) {
        GetDipendentiByIdSedeResponse response = new GetDipendentiByIdSedeResponse();
        GenericResponse gn = new GenericResponse();

        logger.info("MainEndpoint ID: " + request.getIdSede());

        List<DipendenteEntity> opt = dipendenteRepository.findDipendenteEntitiesByIdSede(request.getIdSede());

        if(!opt.isEmpty()) {
            logger.info("MainEndpoint oggetto trovato");
            gn.setEntitiesNumber(opt.size());
            gn.setHttpCode(200);
            gn.setDescription("Success");

            response.setResponseDetail(gn);

            for (var entry : opt) {
                response.getDipendenti().add(DipendenteMapper.toPojo(entry));
            }

        } else {
            logger.info("MainEndpoint NON oggetto trovato");
            gn.setEntitiesNumber(0);
            gn.setHttpCode(404);
            gn.setDescription("Not found");
            response.setResponseDetail(gn);
        }
        return response;
    }
}