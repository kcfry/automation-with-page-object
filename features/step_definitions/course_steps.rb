require 'page-object'
include PageObject::PageFactory

When /^I search CSCCs homepage using the search box$/ do
	visit_page(CsccHome) do |page|
		page.search_for 'csci2994'
	end
end

Then /^I get more than one result$/ do
	on_page(CsciSearchResults) do |page|
		expect(page.search_results.size).to be > 0
	end		
end

When /^I click the first result$/ do
	visit_page(CsccHome) do |page|
		page.search_for 'csci2994'
	end
	on_page(CsciSearchResults) do |click|
		click.click_on
	end
	@browser.windows.last.use
end

Then /^I go to this courses page$/ do
	on_page(CsciCoursePage) do |page|
		expect(page.course).to eq 'CSCI-2994 - CSCI Current Topics'
	end
end

When /^I look at the course description$/ do
	visit_page(CsccHome) do |page|
		page.search_for 'csci2994'
	end
	on_page(CsciSearchResults) do |click|
		click.click_on
	end
	@browser.windows.last.use
end

Then /^I get no prerequisites for the course$/ do
	on_page(CsciCoursePage) do |page|
		expect(page.prereq).to eq 'None'
	end
end

When /^I look under textbooks in the course listing$/ do
	visit_page(CsccHome) do |page|
		page.search_for 'csci2994'
	end
	on_page(CsciSearchResults) do |click|
		click.click_on
	end
	@browser.windows.last.use
end

Then /^there is a link to the bookstore under Textbooks$/ do
	on_page(CsciCoursePage) do |page|
		expect(page.textbooks).to be 'View required and optional textbooks for CSCI2994.'
	end
end