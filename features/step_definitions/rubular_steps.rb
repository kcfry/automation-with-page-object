require 'page-object'
include PageObject::PageFactory

When /^I enter the regexp for a normal email address and a test string of jdenen at cssc dot edu$/ do
	visit_page(RubularHome) do |page|
		page.search_regex '(.*)@(.*)\.(.*)'
		page.search_test 'jdenen@cscc.edu'
		sleep 5
	end
	
end

Then /^I get a match result of jdenen at cssc dot edu in three groups on different lines$/ do
	on_page(RubularHome) do |page|
		expect(page.results_element.trs.size).to be > 1
	end
	
end

When /^I get the match results from rubular$/ do
	visit_page(RubularHome) do |page|
		page.search_regex '(.*)@(.*)\.(.*)'
		page.search_test 'jdenen@cscc.edu'
		sleep 5
	end
end

Then /^they should be preceded by an index number$/ do
	on_page(RubularHome) do |page|
		expect(page.results_element.trs[0].text).to eq "1. jdenen"
		expect(page.results_element.trs[1].text).to eq "2. cscc"
		expect(page.results_element.trs[2].text).to eq "3. edu"
	end
end

















