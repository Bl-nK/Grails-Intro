import grailsintro.Customer

class BootStrap {

    def init = { servletContext ->
        (1..100).each {
            Customer customer = new Customer(name: "Customer $it", address: "$it$it Example Drive Midland, TX 79707", status: 'Active')
            (1..10).each {
                customer.addToContacts(phone: '432-867-5309', name: "Contact $it", title: "Manager $it")
            }
            customer.save(failOnError: true)
        }
    }
    def destroy = {
    }
}
