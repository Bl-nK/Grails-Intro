package grailsintro

import grails.transaction.Transactional
import groovy.json.JsonSlurper

@Transactional
class GeoCodeService {

    def getAddressInfo(String query) {
        String base = 'https://maps.googleapis.com/maps/api/geocode/json?address='
        String url = base + query.tokenize().join('+')
        def json = new JsonSlurper().parseText( new URL(url).text )
        [lat:json?.results?.geometry?.location?.lat[0], lon:json?.results?.geometry?.location?.lng[0], formattedAddress:json?.results?.formatted_address[0]]
    }
}
