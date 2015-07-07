package grailsintro

class Customer {

    String name
    String address

    static hasMany = [contacts:Contact]

    static constraints = {
    }
}
