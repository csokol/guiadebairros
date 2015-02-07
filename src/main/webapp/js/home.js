var selectedLocation;

$(".search-icon").click(function() {
        if (typeof(selectedLocation) !== 'undefined') {
        	window.location.href= '/detail/' + selectedLocation.url;
        }
    });
    
  //Initialize the autocomplete
	$('.initial-search').autocomplete({
		serviceUrl: '/location/autocomplete',
		minChars: 3,
		transformResult: function(response) {
			var suggestions = [];
			$.each($.parseJSON(response), function(i, item) {
				suggestions.push({
					value: item.name,
					url: item.url,
				});
			});
			return {
				suggestions: suggestions
			};
		}, 
		onSelect: function(suggestion) {
			console.log(suggestion);
			selectedLocation = suggestion; 
		}
	}); 
	
	$('#search-form').on('submit', function(ev) {
		ev.preventDefault();
        if (typeof(selectedLocation) !== 'undefined') {
        	window.location.href= '/detail/' + selectedLocation.url;
        }
	});
	
	