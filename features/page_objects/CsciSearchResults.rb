require 'page-object'

class CsciSearchResults
	include PageObject
	
	div(:search_results, class: 'gs-title')
	
	link(:click_on, text: 'CSCI-2994 - CSCI Current Topics')

end
	
	