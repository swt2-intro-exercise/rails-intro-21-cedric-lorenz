require 'rails_helper'

describe "New author page", type: :feature do

  it "should exist at 'new_author_path' and render withour error" do
    # https://guides.rubyonrails.org/routing.html#path-and-url-helpers
    visit new_author_path
  end

  it "should have text inputs for an author's first name, last name, and homepage" do
    visit new_author_path
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
  end

  it "should show an error message if the last_name is not specified upon submitting" do
    visit new_author_path
    no_last_name_author = Author.new(first_name: first_name, last_name: nil, homepage: homepage)
    no_last_name_author.save
    
    expect(page).to have_text('error')
end
