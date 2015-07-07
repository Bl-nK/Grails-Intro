package grailsintro

class Customer {

    String name
    String address
    String status

    Date dateCreated
    Date lastUpdated

    static hasMany = [contacts:Contact]

    static constraints = {
        status inList: ['Active','Inactive']
    }
}
