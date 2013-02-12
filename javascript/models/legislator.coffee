class GetLeg.Models.Legislator extends Backbone.Model
	initialize: =>
		geocoder = new google.maps.Geocoder()
		address = @get('address')
		if geocoder
			geocoder.geocode 'address': address, (results, status) =>
				if status is google.maps.GeocoderStatus.OK
					@set({ lat: results[0].geometry.location.Ya })
					@set({ long: results[0].geometry.location.Za })
					legislators.add @
				else
					console.log "Geocoder failed: " + status

class GetLeg.Collections.LegislatorsCollection extends Backbone.Collection
	model: GetLeg.Models.Legislator