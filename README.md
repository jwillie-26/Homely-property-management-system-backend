# HOMELY_PROPERTY_MANAGEMENT_SYSTEM



## About
To help curb deficiency in management systems suitable for persons owing property, we designed Homely to help them. Homely is a simple web app that solves this problem by allowing landlords' and landladies to gather, manipulate and store data for sound decision making and planning.

### Entity Relational Diagram 

![IMG-20230304-WA0000](https://user-images.githubusercontent.com/105637783/222875223-9d15db81-00c3-4108-b6c5-a5db51a52609.jpg)




## REQUIREMENTS

For this project,

- I Used Active Record to interact with a database.
- It has three models as shown by the above ERD


## Technologies

### Frontend

`ReactJS`

`CSS`

`HTML`

`JavaScript`

### Backend

`Ruby ` 

`SQLite database`

## Setting-up

## APi Endpoints

The following API endpoints are available:

### get all landlords
  get "/landlords"
    
  ### get all properties
  get "/properties"
   
  ### get a properties
  get "/properties/:id"
    
  ### get property count
  get "/total properties" 
    
  ### get active users
  get "/active tenants"
    
  ### get monthly rent
  get "/month rent"
    
  ### get all tenants
  get "/tenants"
    
  ### creating property
  post "/property" 

  ### creating tenant
  post "/tenant"

  ### patch tenant requests
  patch "/tenant/:id"

  # updating property
  patch "/properties/:id"

  ### delete tenant 
  delete "/tenant/:id" 

  ### delete property
  delete "/property/:id"
  
  
1. Clone the repository

  "https://github.com/jwillie-26/Homely-property-management-system-backend"
`

2. Install the dependencies
`bundle install`

3. Run the migrations.
`bundle exec rake db:migrate`

4. Seed the database.
`bundle exec rake db:seed`

5. Start the server
`bundle exec rake server`

Open your browser and go to http://localhost:9292/ to verify that the API is working.
