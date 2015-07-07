# Grails Introduction
Sample Grails application for the [Midessa IT Professionals](https://www.facebook.com/groups/891487920891644/)

## How did this branch become so awesome?
1. The CustomerController is using scaffolding!
  * Highly dynamic
  * Quickly generate controller actions and web views based on domain classes

2. grails generate-views grailsintro.Contact
  * Generates all the code that would normally be generated beind the scenes when using 'scaffolding'. All views have been generated and can be modified as you please.
  * I typically wait to generate anything until my domains become mature.

## Why use scaffolding?
1. Quickly test your database functionality
2. Easily generate CRUD interfaces

**Just because it was generated, doesn't mean it's the best**
Scaffolding is great for simple databases. However, it can only handle a certain level of complexity.
