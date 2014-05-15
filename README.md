###README###

This is a basic REST api for a food resource.

A food resource has two properties, a name and place.

The endpoints are:

**GET: /foods**

This will return a list of all current foods in the db.


**GET: /foods/:id**

This wil return the properties of the food with the :id.

**POST: /foods**

This creates a new food object.

food[name]: Name of the food
food[place]: Name of the place the food resides

**DESTROY: /foods/:id**

This will delete the food with the related :id


##RSPEC##

There are three tests. Each tests a basic function of a restful api.

* Checks that the Food object properly creates objects
* Checks that a route is properly working
* Checks an endpoint is returning the proper data
