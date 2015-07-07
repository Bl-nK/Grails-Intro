# Grails Introduction
Sample Grails application for the [Midessa IT Professionals](https://www.facebook.com/groups/891487920891644/)

## How did this branch become so awesome?
1. grails create-domain-class customer / contact
  * Creates a domain class
  * From the documentation : "A domain class fulfills the M in the Model View Controller (MVC) pattern and represents a persistent entity that is mapped onto an underlying database table. In Grails a domain is a class that lives in the grails-app/domain directory. A domain class can be created with the create-domain-class command:"
  * https://grails.github.io/grails-doc/2.5.0/ref/Command%20Line/create-domain-class.html

2. A customer has many contacts and a contact belongs to a customer.
  * Cascading deletes and updates
