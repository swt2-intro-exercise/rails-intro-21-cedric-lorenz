require 'rails_helper'

RSpec.describe Paper, type: :model do

  title = "Escalation"
  venue = "Prosit"
  year = 2018
  paper = Paper.new(title: title, venue: venue, year: year)

  it "should invalidate a paper who has a nil field" do
    nil_paper= Paper.new
    expect(nil_paper).to_not be_valid
  end

   it "should validate an paper that has no nil fields" do
    expect(paper).to be_valid
  end

  it "should have an empty authors list" do
    expect(paper.authors).to eq([])
  end
end
