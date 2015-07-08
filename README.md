# Grails Introduction
Sample Grails application for the [Midessa IT Professionals](https://www.facebook.com/groups/891487920891644/)

## How did this branch become so awesome?
1. Created a geoCodeService
  * grails create-service geoCode
  * Services are where you business logic exists. I could have put this code in the controller, but keeping it segregated keeps things modular.

2. grails generate-all grailsintro.Customer
  * Generates all the code that would normally be generated beind the scenes when using 'scaffolding'. All views have been generated and can be modified as you please.
  * Modified the save action to use the new service and add values returned by the service.
