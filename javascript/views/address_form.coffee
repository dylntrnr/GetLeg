class GetLeg.Views.AddressForm extends Backbone.View
	events:
		'click #Submit': 'createNewModel'
	createNewModel: ->
		window.submitCall = true;
		legislators.reset()
		userAddress = $('#user_address').val()
		test = new GetLeg.Models.Legislator
			address: userAddress
