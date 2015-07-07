package grailsintro

class CustomerController {

    def scaffold = true

    def activeCustomers(){
        [customers:Customer.findAllByStatus('Active')]
        //This dynamic finder translates to "select * from customer where status = 'Active"
    }
}
