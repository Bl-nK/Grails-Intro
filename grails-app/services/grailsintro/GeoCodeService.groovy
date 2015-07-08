package grailsintro

import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional
class GeoCodeService {

    def getAddressInfo(String query) {
        String base = 'https://maps.googleapis.com/maps/api/geocode/json?address=' //Base URL for queries
        String url = base + query.tokenize().join('+') //Replace all spaces with +
        def json = new JsonSlurper().parseText( new URL(url).text ) //Run the query and parse resulting JSON
        [lat:json?.results?.geometry?.location?.lat[0], lon:json?.results?.geometry?.location?.lng[0], formattedAddress:json?.results?.formatted_address[0]]
    }
}
