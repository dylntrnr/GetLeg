class GetLeg.Views.LegislatorsView extends Backbone.View
	template: Hogan.compile $('#legislator-template').html()
	initialize: ->
		@collection.on 'add', @addLegislator
	render: =>
		@$el.empty()
		for legislator in @collection.models
			do (legislator) =>
				@$el.prepend @template.render(legislator.toJSON())
	addLegislator: =>
		model = @collection.models[0]
		if !model.attributes.long
			console.log "no attributes to call"
		else
			@collection.fetch
				url: 'http://openstates.org/api/v1/legislators/geo/?long=' + model.attributes.long + '&lat=' + model.attributes.lat + '&apikey=c13dee9099be4512a8bca6ad4f94c4aa&callback=?'
				success: (data, s) =>
					legislators.reset()
					legislators.add(s)
					@render @collection
					return
					

	
