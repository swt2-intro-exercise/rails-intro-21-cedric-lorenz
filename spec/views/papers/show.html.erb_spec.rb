require 'rails_helper'

RSpec.describe "papers/show", type: :view do
  before(:each) do
    @paper = assign(:paper, Paper.create!(
      title: "Title",
      venue: "Venue",
      year: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/2/)
  end

  it "should show the full name of the author" do
    author = Author.new(first_name: "Test", last_name: "Fest")
    @paper.authors << author
    render
    expect(rendered).to match(author.name)
  end
end
