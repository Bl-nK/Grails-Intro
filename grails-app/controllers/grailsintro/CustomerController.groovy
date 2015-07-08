package grailsintro



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomerController {

    def GeoCodeService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def activeCustomers(){
        [customers:Customer.findAllByStatus('Active')]
        //This dynamic finder translates to "select * from customer where status = 'Active"
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Customer.list(params), model:[customerInstanceCount: Customer.count()]
    }

    def show(Customer customerInstance) {
        respond customerInstance
    }

    def create() {
        respond new Customer(params)
    }

    @Transactional
    def save(Customer customerInstance) {
        def addressInfo =  GeoCodeService.getAddressInfo(customerInstance.address)

        customerInstance.formattedAddress = addressInfo.formattedAddress
        customerInstance.lat = addressInfo.lat
        customerInstance.lon = addressInfo.lon

        if (customerInstance == null) {
            notFound()
            return
        }

        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view:'create'
            return
        }

        customerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*' { respond customerInstance, [status: CREATED] }
        }
    }

    def edit(Customer customerInstance) {
        respond customerInstance
    }

    @Transactional
    def update(Customer customerInstance) {
        if (customerInstance == null) {
            notFound()
            return
        }

        if (customerInstance.hasErrors()) {
            respond customerInstance.errors, view:'edit'
            return
        }

        customerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect customerInstance
            }
            '*'{ respond customerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Customer customerInstance) {

        if (customerInstance == null) {
            notFound()
            return
        }

        customerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Customer.label', default: 'Customer'), customerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customer.label', default: 'Customer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
