require 'page-object'

class RubularHome
	include PageObject
	
	page_url 'rubular.com'
	
	text_field(:search_expression, id: 'regex')
	text_field(:search_email, id: 'test')
	div(:results, id: 'match_captures')
	
	def search_regex(expression)
		self.search_expression = expression
		
	end
	
	def search_test(email)
		self.search_email = email
		
	end
	
	
end

