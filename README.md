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
1. Clone this repo.
2. Open a terminal and move to the repo directory
3. Run `$ docker build -t simulatore-sas .`
4. Then run `docker-compose up`  
At this point the jdk container will crash because Hibernate was unable
to reach the database, but the context of the architecture will be created and
the two container for database and database managment will be running.
5. Open the browser and connect to `http://localhost:8080` and insert `root` both
for username and password.
6. Use the file `prenotazioni.sql` inside the cloned directory to import all data.
7. Now `clean install` using maven to build the *.jar inside a newly created `target`
directory. The JAR file has to be named `sas-0.0.1-SNAPSHOT.jar`.
8. Run the JDK container through Docker-Desktop or re-launch `docker-compose up`.

## Requests
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