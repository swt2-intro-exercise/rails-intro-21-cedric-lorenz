require 'rails_helper'

describe "New author page", type: :feature do

  before(:all) do
    @author = Author.create(first_name: "Firsty", last_name: "Lasty", homepage: "https://example.com")
  end

  it "should exist at 'edit_author_path' and render withour error" do
    visit edit_author_path(id: @author.id)
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit edit_author_path(id: @author.id)
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should update the values of the author upon submitting" do
    new_last_name = "Testy"
    visit edit_author_path(id: @author.id)
    @author.update(:last_name => new_last_name)
    @author.reload
    expect(@author.last_name).to eq(new_last_name)
  end
end
