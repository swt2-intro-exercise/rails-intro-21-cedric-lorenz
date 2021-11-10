require 'rails_helper'

describe "Index author page", type: :feature do

  it "should exist at 'authors_path' and render withour error" do
    visit authors_path
  end

  it "should have link to 'new_author_path'" do
    visit authors_path
    expect(page).to have_link('New', href: new_author_path)
  end
end
