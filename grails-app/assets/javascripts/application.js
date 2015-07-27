// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}

function initialize() {
	var mapOptions = {
		center: { lat: lat, lng: lon},
		zoom: 20,
		mapTypeId: 'hybrid'
	};
	var map = new google.maps.Map(document.getElementById('map-canvas'),
		mapOptions);
	var latlng = new google.maps.LatLng(lat, lng);
	map.setCenter(latlng);
}
