# Go Local-Backend 

![pin-logo-big](https://user-images.githubusercontent.com/67389821/109405612-0fc22800-7927-11eb-862f-32b2a6e19d5e.png)

## Table of Contents

-   [Description](#description)
-   [Installing](#Installing)
-   [Running the Tests](#running-the-tests)
-   [Database Schema](#database-schema)
-   [API Exposed Endpoints](#api-exposed-endpoints)
-   [Authors](#authors)
-   [Statistics](#statistics)

## Description 

This application allows local users to create travel experiences for their local city, that travel users can see, rate and recommend. The fictitious company utilizes a service-oriented architecture, and this as a separate back-end application.
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
Run ``` bundle exec rspec.``` All tests should be passing.
You can also run ``` bundle exec rspec /path```

## Database Schema

<img width="1004" alt="Screen Shot 2021-02-28 at 08 08 59" src="https://user-images.githubusercontent.com/67389821/109425256-48501900-799c-11eb-9c4b-5132422c37ed.png">

## API Exposed Endpoints
### Place Search
This endpoint takes query params of `title` and `location`. It uses them to make an API call to the microservice. It then returns a JSON response.  
### Place Details
This endpoint takes query params of `place id`. It uses them to make an API call to the microservice. It then returns a JSON response.
### Create Record

This endpoint creates a record and renders a JSON representation of that new record. 

![image](linktoimageforapiendpoint)

This endpoint renders a JSON representation of all records of the requested resource.

`GET /api/v1/<resource>` where `<resource>` is `merchants` or `items`

Example JSON response:
```json
{
    "data": {
        "id": null,
        "type": "place",
        "attributes": {
            "place_id": "ChIJE7tYRySHa4cRSauU_fDROfk",
            "formatted_address": "6715 W Colfax Ave, Lakewood, CO 80214, United States",
            "name": "Casa Bonita",
            "types": [
                "restaurant",
                "food",
                "point_of_interest",
                "establishment"
            ]
        }
    }
}
```

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

