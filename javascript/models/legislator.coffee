class GetLeg.Models.Legislator extends Backbone.Model
	# defaults:
	# 	# last_name: "Doe"
	# 	# first_name: "John"
	# 	# email: "last_name@le.state.gov"
	# 	# photo_url: "http://www.utahsenate.org/images/member-photos/DABAKJ.jpg"
	# 	# lat: 37.4221913
	# 	# long: -122.0845853
	# 	# address: "916 South 1900 East SLC 84108"
	# 	&callback=?
	url: ->
		"http://maps.googleapis.com/maps/api/geocode/json?address=" + @get('address') + "&sensor=false"
	parse: (json) ->
		if !json.results then console.log "nothing was there" else
			@set({ lat: json.results[0].geometry.location.lat })
			@set({ long: json.results[0].geometry.location.lng })
	initialize: ->
		@fetch
			success: =>
				legislators.add @


class GetLeg.Collections.LegislatorsCollection extends Backbone.Collection
	model: GetLeg.Models.Legislator
	# parse: (data) ->
	# 	# for model in @models
	# 	# 	for object in data
	# 	# 		model.set({ first_name: object.first_name})
	# 	# for k,v of data[0]
	# 	# 	console.log k + " is " + v
	# 	for object in data
	# 		for k, v of object
	# 			console.log k, v
	# 			@models[0].set({ k : v})		
	# 	return