require 'page-object'

class CsciCoursePage
	include PageObject
	
	h1(:course, text: 'CSCI-2994 - CSCI Current Topics')
	
	paragraph(:prereq, text: 'None')
	
	link(:textbooks, text: 'View required and optional textbooks for CSCI2994.')
end
