require 'rails_helper'

describe "Paper index page", type: :feature do
 
	it "should render the paper index page without error" do
		visit papers_path
	end

it "should filter papers by year" do
		@paper = Paper.create(title: "Thinking Fast and Slow", venue: "Test", year: 1999)
		expect(Paper.filter_by_year(2000)).to be_empty
		expect(Paper.filter_by_year(1999)).not_to be_empty
	end
end