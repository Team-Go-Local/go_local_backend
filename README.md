# Go Local-BE 

![image](linktoimage)


## Table of Contents

-   [Description](#description)
-   [Installing](#Installing)
-   [Running the Tests](#running-the-tests)
-   [Database Schema](#database-schema)
-   [API Exposed Endpoints](#api-exposed-endpoints)
-   [Authors](#authors)
-   [Statistics](#statistics)

## Description 

The Go Local App allows local town users to create travel experiences for their local city. Visitors can see the experiences, rate them and add recommendations. 
This portion of the application consumes data from the microservice application and exposes API endpoints for our frontend application.

## Installng 
To use on your local machine please follow the instcutions below: 

```
  git clone git@github.com:Team-Go-Local/go_local_backend.git
  cd go_local_backend
  bundle install 
  rake db:{create,migrate}
  run rails server 
  in browser visit localhost:3000 
```

## Running the Tests
Run with $ bundle exec rspec. All tests should be passing.
You can also run $ bundle exec rspec /path

## Database Schema
![go-local-be-db](https://user-images.githubusercontent.com/69552154/109088087-f83b3300-76cb-11eb-9482-bb1cad8fba84.png)

## API Exposed Endpoints
### Place Search
This endpoint takes query params and uses them to make an API call to the microservice. It then returns a JSON response.  
### Create Record
This endpoint creates a record and renders a JSON representation of that new record. 

![image](linktoimageforapiendpoint)



## Authors 
-   Cydnee Owens | [github](https://github.com/cowens87) \| [linkedin](https://www.linkedin.com/in/cydnee-owens-5280/)
-   Gus Cunningham | [github](https://github.com/cunninghamge) \| [linkedin](https://www.linkedin.com/in/grayson-cunningham/)
-   Isabelle Villasenor | [github](https://github.com/isabellevillasenor) \| [linkedin](https://www.linkedin.com/in/isabelle-villasenor/)
-   Saundra Catalina | [github](https://github.com/saundracatalina) \| [linkedin](https://www.linkedin.com/in/saundra-catalina/)
-   Sam Yeo | [github](https://github.com/SK-Sam) \| [linkedin](https://www.linkedin.com/in/samuel-horishin-yeo/)
-   V Arruda | [github](https://github.com/nessarruda) \| [linkedin](https://www.linkedin.com/in/vanessa-alves-de-arruda/)
-   Yesi Meza | [github](https://github.com/SK-Sam) \| [linkedin](https://www.linkedin.com/in/yesimeza/)

## Statistics
<!-- Shields -->
![](https://img.shields.io/badge/Rails-5.2.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)
![](https://img.shields.io/github/contributors/Team-Go-Local/go_local_backend)

