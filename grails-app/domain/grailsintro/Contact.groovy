package grailsintro

class Contact {
    String name
    String title
    String email
    String phone

    static belongsTo = [customer:Customer]

    static constraints = {
        email nullable:true, blank:true, email:true
    }
}
