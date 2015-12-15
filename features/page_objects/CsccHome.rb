require 'page-object'

class CsccHome
	include PageObject
	
	page_url 'cscc.edu'
	
	text_field(:search_blah, id: 'input')

	def search_for(blah)
		self.search_blah = blah
		@browser.send_keys :enter
	end

end