package grailsintro

class Customer {

    String name
    String address
    String status
    String formattedAddress
    String lat
    String lon

    Date dateCreated
    Date lastUpdated

    static hasMany = [contacts:Contact]

    static constraints = {
        status inList: ['Active','Inactive']
        formattedAddress nullable: true, blank: true
        lat nullable: true, blank: true
        lon nullable: true, blank: true
    }
}
