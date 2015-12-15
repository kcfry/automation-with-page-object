Feature:Course Listings
	As a student, I want to find the special topics course, so that I can learn Cucumber.
	
	@course
	Scenario:Searching for "CSCI 2994" from CSCC's homepage should yield more than one result.
		When I search CSCCs homepage using the search box
		Then I get more than one result
		
	@course	
	Scenario:The first result of the search is titled "CSCI-2994 - CSCI Current Topics"
		When I click the first result
		Then I go to this courses page
	
	@course	
	Scenario:The course lists "None" for its prerequisites.
		When I look at the course description
		Then I get no prerequisites for the course
	
	@course	
	Scenario:There's a link to the bookstore under Textbooks for the course listing.
		When I look under textbooks in the course listing
		Then there is a link to the bookstore under Textbooks