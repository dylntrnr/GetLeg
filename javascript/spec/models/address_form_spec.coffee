describe "AddressForm Model", ->
	it "should be defined", ->
		expect(GetLeg.Models.AddressForm).toBeDefined()
	describe "methods", ->
		test = {}
		json = 
				{
				"results" : [{
				"address_components" : [{
				"long_name" : "1600",
				"short_name" : "1600",
				"types" : [ "street_number" ]
				},
				{
				"long_name" : "Amphitheatre Parkway",
				"short_name" : "Amphitheatre Pkwy",
				"types" : [ "route" ]
				},
				{
				"long_name" : "Mountain View",
				"short_name" : "Mountain View",
				"types" : [ "locality", "political" ]
				},
				{
				"long_name" : "Santa Clara",
				"short_name" : "Santa Clara",
				"types" : [ "administrative_area_level_2", "political" ]
				},
				{
				"long_name" : "California",
				"short_name" : "CA",
				"types" : [ "administrative_area_level_1", "political" ]
				},
				{
				"long_name" : "United States",
				"short_name" : "US",
				"types" : [ "country", "political" ]
				},
				{
				"long_name" : "94043",
				"short_name" : "94043",
				"types" : [ "postal_code" ]
				}
				],
				"formatted_address" : "1600 Amphitheatre Parkway, Mountain View, CA 94043, USA",
				"geometry" : {
				"location" : {
				"lat" : 37.42219130,
				"lng" : -122.08458530
				},
				"location_type" : "ROOFTOP",
				"viewport" : {
				"northeast" : {
				"lat" : 37.42354028029150,
				"lng" : -122.0832363197085
				},
				"southwest" : {
				"lat" : 37.42084231970850,
				"lng" : -122.0859342802915
				}
				}
				},
				"types" : [ "street_address" ]
				}
				],
				"status" : "OK"
				}
		beforeEach ->
			test = new GetLeg.Models.AddressForm

		it "should have default attributes", ->
			expect(test.attributes.lat).toEqual -40.12313
			expect(test.attributes.long).toBeDefined()
			expect(test.attributes.address).toBeDefined()
		it "should allow setting new attributes", ->
			test.set({ lat: 918273912})
			expect(test.attributes.lat).toEqual 918273912
		it "should have a url method", ->
			expect(test.url()).toEqual "http://maps.googleapis.com/maps/api/geocode/json?address=" + test.attributes.address + "&sensor=false"
		it "should have a parse method", ->
			expect(test.parse).toBeDefined()
		it "parse should set new lat and long", ->
			test.parse(json)
			expect(test.attributes.lat).toEqual 37.4221913
			expect(test.attributes.long).toEqual -122.0845853
	describe "Making New Models", ->
		newTest = new GetLeg.Models.AddressForm	
		it "should have default values", ->
			expect(newTest.attributes.lat).toEqual -40.12313
		newTestAddress = new GetLeg.Models.AddressForm({ address: "150 S 800 E SLC 84102"})
		waits 500
		it "should get the new lat when set with address", ->
			expect(newTestAddress.get "lat").not.toEqual -40.12313

