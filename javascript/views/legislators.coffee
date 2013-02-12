class GetLeg.Views.LegislatorsView extends Backbone.View
	events:
		'click .remove': 'removeLegislator'
	template: Hogan.compile $('#legislator-template').html()
	initialize: ->
		# @render @collection
		@collection.on 'add', @addLegislator
		# @collection.on 'remove', @render
	render: =>
		@$el.empty()
		for legislator in @collection.models
			do (legislator) =>
				@$el.prepend @template.render(legislator.toJSON())
	removeLegislator: (evt) =>
		id = evt.target.id
		model = @collection.get id
		@collection.remove model
	addLegislator: =>
		model = @collection.models[0]
		if !model.attributes.long
			console.log "no attributes to call"
		else
			@collection.fetch
				url: 'http://openstates.org/api/v1/legislators/geo/?long=' + model.attributes.long + '&lat=' + model.attributes.lat + '&apikey=c13dee9099be4512a8bca6ad4f94c4aa&callback=?'
				success: (data, s) =>
					if(window.submitCall)
						window.submitCall = false
						legislators.reset()
						legislators.add(s)
						@render @collection
						return
					else
						console.log window.submitCall

	
