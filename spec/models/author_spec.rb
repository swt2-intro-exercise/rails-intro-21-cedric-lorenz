require 'rails_helper'

describe "Author model", type: :model do

  first_name = "Alan"
  last_name = "Turing"
  homepage = "http://wikipedia.org/Alan_Turing"  
  author = Author.new(first_name: first_name, last_name: last_name, homepage: homepage)

  it "should have a first name" do
    expect(author.first_name).to eq(first_name)
  end

  it "should have a last name" do
    expect(author.last_name).to eq(last_name)
  end

  it "should have a homepage" do
    expect(author.homepage).to eq(homepage)
  end

  it "should have a name method which returns the full name" do
    expect(author.name).to eq(first_name + " " + last_name)
  end

  it "should invalidate an author whose last_name field has the value nil" do
    no_last_name_author = Author.new(first_name: first_name, last_name: nil, homepage: homepage)
    expect(no_last_name_author).to_not be_valid
  end

  it "should validate an author whose last_name field is not nil" do
    expect(author).to be_valid
  end

  it "should have an empty papers list" do
    expect(author.papers).to eq([])
  end

end