class GetLeg.Models.AddressForm extends Backbone.Model
	defaults:
		lat: -40.12313
		long: 111.12412
		address: "916 South 1900 East SLC 84108"
	url: ->
		"http://maps.googleapis.com/maps/api/geocode/json?address=" + @get('address') + "&sensor=false"
	parse: (json) ->
		@set({ lat: json.results[0].geometry.location.lat })
		@set({ long: json.results[0].geometry.location.lng })
	initialize: ->
		@fetch()
		@on 'change:address', => 
			@fetch()
	