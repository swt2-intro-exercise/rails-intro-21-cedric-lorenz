require 'rails_helper'

describe "Index author page", type: :feature do
  before do 
    visit authors_path
  end

  it "should exist at 'authors_path' and render withour error" do
  end

  it "should have link to 'new_author_path'" do
    expect(page).to have_link('New', href: new_author_path)
  end

  it "should decrease the number of entries upon hitting the delete button of an entry" do
    @author = Author.create(first_name: "Firsty", last_name: "Secondy", homepage: "https://example.com")
    count = Author.count
    @author.delete
    expect(Author.count).to eq(count - 1)
  end
end
