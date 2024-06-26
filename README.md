# Soap Webserver
A soap webserver created to be inserted as a server to be queried in an infrastructure of three
microservices

## Infrastructure
1. **First layer**: a Spring webserver created with the aim of simulating a front-end that sends rest requests.
It is controlled via rest sends to specific endpoints.
2. **Second layer**: a Spring microservice that translates front-end rest requests to soap to be sended
at the layer below and which implements the business logic.
3. **Third layer**: a spring web services server that uses just soap request and interact with the database.

## How to launch
[Doc](https://github.com/aremi0/Formazione/tree/main/Infrastruttura%20SOAP%20to%20Spring%20to%20FrontEnd)

## Requests
- **GET** to `http://localhost:8081/ws/sas.wsdl` for the *wsdl contract*.

**SOAP Protocol 1.1**   
**SAAJ MessaFactory 1.3**  
**Application used:** Insomnia <small>[link](https://insomnia.rest/)</small>  
**URL:** http://localhost:8081/ws  
**Method:** POST  
**Header:** Content-Type: text/xml  

- **GetDipendentiByIdSedeRequest:**
```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
				  xmlns:sas="http://example/infrastructure/sas-simulation-webservice">
   <soapenv:Header/>
   <soapenv:Body>
      <sas:GetDipendentiByIdSedeRequest>
         <sas:idSede>2</sas:idSede>
      </sas:GetDipendentiByIdSedeRequest>
   </soapenv:Body>
</soapenv:Envelope>
```

- **GetIsolaRequest:**
```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
				  xmlns:sas="http://example/infrastructure/sas-simulation-webservice">
   <soapenv:Header/>
   <soapenv:Body>
      <sas:getIsolaRequest>
         <sas:id>2</sas:id>
      </sas:getIsolaRequest>
   </soapenv:Body>
</soapenv:Envelope>
```

- **GetSedeLavorativaRequest:**
```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                  xmlns:sas="http://example/infrastructure/sas-simulation-webservice">
    <soapenv:Header/>
    <soapenv:Body>
        <sas:getSedeLavorativaRequest>
            <sas:id>51</sas:id>
        </sas:getSedeLavorativaRequest>
    </soapenv:Body>
</soapenv:Envelope>

```

- **GetDipendenteRequest:**
```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
				  xmlns:sas="http://example/infrastructure/sas-simulation-webservice">
   <soapenv:Header/>
   <soapenv:Body>
      <sas:getDipendenteRequest>
         <sas:id>11</sas:id>
      </sas:getDipendenteRequest>
   </soapenv:Body>
</soapenv:Envelope>
```