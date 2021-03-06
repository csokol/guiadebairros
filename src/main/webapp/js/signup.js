
    
  //Initialize the autocomplete
	$('.initial-search').autocomplete({
		serviceUrl: '/location/autocomplete',
		minChars: 3,
		transformResult: function(response) {
			var suggestions = [];
			$.each($.parseJSON(response), function(i, item) {
				suggestions.push({
					value: item.name,
					id: item.id,
				});
			});
			return {
				suggestions: suggestions
			};
		}, 
		onSelect: function(suggestion) {
			console.log(suggestion);
			$('.stars-form').attr('action', '/location/evaluate/'+suggestion.id)
		},
		appendTo: '#xablau'
	});
	
	
	