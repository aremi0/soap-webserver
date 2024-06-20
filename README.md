# Soap Webserver
A soap webserver created to be inserted as a server to be queried in an infrastructure of three
microservices

## Infrastructure
1. **First layer**: a Spring webserver created with the aim of simulating a front-end that sends rest requests.
It is controlled via rest sends to specific endpoints.
2. **Second layer**: a Spring microservice that translates front-end rest requests to soap to be sended
at the layer below and which implements the business logic.
3. **Third layer**: a spring web services server that uses just soap request and interact with the database.