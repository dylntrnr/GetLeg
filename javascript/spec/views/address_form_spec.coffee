describe "Address Form", ->
	jasmine.getFixtures().fixturesPath = 'javascript/spec/fixtures'
	beforeEach ->
		loadFixtures 'address_form.html'
		@invisible_form = $('#address-form')
		@address_form = new GetLeg.Views.AddressForm
			el: @invisible_form
			collection: new GetLeg.Collections.LegislatorsCollection
		
	it "should be defined", ->
		expect(GetLeg.Views.AddressForm).toBeDefined()
	it "should have the right element", ->
		expect(@address_form.$el).toEqual @invisible_form
	it "should have a collection", ->
		expect(@address_form.collection).toEqual new GetLeg.Collections.LegislatorsCollection
	describe "form submit", ->
		it "should have a user-address input area", ->
			expect($('#user_address')).toBeDefined()
		it "should allow us to the get value of the user_address", ->
			expect($('#user_address').val()).toEqual ""
		it "should allow us to click the submit button", ->
			expect($('#Submit')).toBeDefined()


